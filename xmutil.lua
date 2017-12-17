local M = {}

local util = require("util")

function M.assembler_pipes(graphics_source)
	return {
		north =
		{
			filename = "__xander-mod__/graphics/entity/production/" .. graphics_source .. "/pipe-N.png",
			priority = "extra-high",
			width = 35,
			height = 18,
			shift = util.by_pixel(2.5, 14),
			hr_version =
			{
				filename = "__xander-mod__/graphics/entity/production/" .. graphics_source .. "/hr-pipe-N.png",
				priority = "extra-high",
				width = 71,
				height = 38,
				shift = util.by_pixel(2.25, 13.5),
				scale = 0.5,
			}
		},
		east =
		{
			filename = "__xander-mod__/graphics/entity/production/" .. graphics_source .. "/pipe-E.png",
			priority = "extra-high",
			width = 20,
			height = 38,
			shift = util.by_pixel(-25, 1),
			hr_version =
			{
				filename = "__xander-mod__/graphics/entity/production/" .. graphics_source .. "/hr-pipe-E.png",
				priority = "extra-high",
				width = 42,
				height = 76,
				shift = util.by_pixel(-24.5, 1),
				scale = 0.5,
			}
		},
		south =
		{
			filename = "__xander-mod__/graphics/entity/production/" .. graphics_source .. "/pipe-S.png",
			priority = "extra-high",
			width = 44,
			height = 31,
			shift = util.by_pixel(0, -31.5),
			hr_version =
			{
				filename = "__xander-mod__/graphics/entity/production/" .. graphics_source .. "/hr-pipe-S.png",
				priority = "extra-high",
				width = 88,
				height = 61,
				shift = util.by_pixel(0, -31.25),
				scale = 0.5,
			}
		},
		west =
		{
			filename = "__xander-mod__/graphics/entity/production/" .. graphics_source .. "/pipe-W.png",
			priority = "extra-high",
			width = 19,
			height = 37,
			shift = util.by_pixel(25.5, 1.5),
			hr_version =
			{
				filename = "__xander-mod__/graphics/entity/production/" .. graphics_source .. "/hr-pipe-W.png",
				priority = "extra-high",
				width = 39,
				height = 73,
				shift = util.by_pixel(25.75, 1.25),
				scale = 0.5,
			}
		}
	}
end

function M.assembler_fluid_boxes(graphics_source)
	return {
		{
			production_type = "input",
			pipe_picture = M.assembler_pipes(graphics_source),
			pipe_covers = pipecoverspictures(),
			base_area = 10,
			base_level = -1,
			pipe_connections = {{type="input", position = {0, -2}}},
			secondary_draw_orders = {north = -1}
		},
		{
			production_type = "output",
			pipe_picture = M.assembler_pipes(graphics_source),
			pipe_covers = pipecoverspictures(),
			base_area = 10,
			base_level = 1,
			pipe_connections = {{type = "output", position = {0, 2}}},
			secondary_draw_orders = { north = -1 }
		},
		off_when_no_fluid_recipe = true
	}
end

local function gsub_recurse(table, pattern, repl, filter)
	for k,v in pairs(table) do
		if type(v) == "table" then
			gsub_recurse(v, pattern, repl, filter)
		elseif type(v) == "string" and (not filter or filter(v)) then
			table[k] = string.gsub(v, pattern, repl)
		end
	end
end

local function sub_graphics(table, from, to)
	local filter = function(str)
		return not (string.match(str, "%-shadow%-?") or
			string.match(str, "%-mask.png$") or
			string.match(str, "wall%-patch") or
			string.match(str, "gate.*base"))
	end
	-- hyphen is too common to mess with it as a meta-character
	from = string.gsub(from, "%-", "%%-")
	gsub_recurse(table, from, to, filter)
end

M.NIL = {}

function M.merge(tables)
  local ret = {}
  for i, tab in ipairs(tables) do
	for k, v in pairs(tab) do
	  if v == M.NIL then
		ret[k] = nil
	  elseif (type(v) == "table") and (type(ret[k] or false) == "table") then
		ret[k] = M.merge{ret[k], v}
	  else
		ret[k] = v
	  end
	end
  end
  return ret
end

function M.clone(type, name, graphics_subs, overlay)
	local with_graphics = util.table.deepcopy(data.raw[type][name])
	for _, graphics_sub in ipairs(graphics_subs) do
		sub_graphics(with_graphics, graphics_sub[1], graphics_sub[2])
	end
	return M.merge{with_graphics, overlay}
end

return M