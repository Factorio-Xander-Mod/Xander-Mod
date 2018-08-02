require("logtools")

csvtools = {}

local DELIM = ";"
local CELLPATTERN = "([^" .. DELIM .. "]*)" .. DELIM

function csvtools.read_lines(lines_string)
	local lines = {}
	for line in string.gmatch(lines_string, "[^\r\n]+") do
		lines[#lines+1] = line
	end
	return lines
end

function csvtools.string_as_value(str)
	-- if string is an unknown identifier return as string and dont call it
	if str ~= "nil" and str ~= "true" and str ~= "false" and str:match("^[A-Za-z_][A-Za-z0-9_]*$") then
		return str 
	else
		return loadstring("return "..str)()
	end
end

function csvtools.get_linepattern(line)
	local linepattern = ""
	local column_names = {}

	-- f.e. group;subgroup;name;xm;recipes;specials;prerequisites;count;ingredients;time;;icon
	for cell in string.gmatch(line, CELLPATTERN) do
		logtools.log(5, "cell: ", cell)

		linepattern = linepattern .. CELLPATTERN
		column_names[#column_names+1] = cell
	end

	return linepattern, column_names
end


function csvtools.read_data_from_csv_lines(lines)
	local data = {}
	
	local linepattern = ""
	local column_names = {}

	local firstline = true

	for _, line in ipairs(lines) do		
		-- skip empty lines
		if line and line ~= "" then

			-- always add the delimeter at the end
			local line_with_trailing_delim = line .. DELIM

			if firstline then
				
				-- the first line contains the column_names
				-- linepattern is a regex for the whole line
				linepattern, column_names = csvtools.get_linepattern(line_with_trailing_delim)
				logtools.log(4, "linepattern: ", linepattern)
				logtools.log(4, "column_names", column_names)
				firstline = false			
			else

				-- values is an array of all cell values
				local values = { line_with_trailing_delim:match(linepattern) }
				
				logtools.log(5, "values: ", values)

				local data_entry = {}
				for i, column_name in ipairs(column_names) do
					if column_name and column_name ~= "" then
						local value = values[i]
						data_entry[column_name] = csvtools.string_as_value(value)
					end
				end

				logtools.log(4, "data_entry: ", data_entry)

				data[#data+1] = data_entry
			end
		end
    end

    return data
end