local M = {}

local util = require("util")

local function gsub_recurse(table, pattern, repl, n)
    for k,v in pairs(table) do
        if type(v) == "table" then
            gsub_recurse(v, pattern, repl, n)
        elseif type(v) == "string" then
            table[k] = string.gsub(v, pattern, repl, n)
        end
    end
end

local function sub_graphics(table, from, to)
    if string.match(from, "[%(%)]") then
        error("from cannot contain parentheses")
    end
    local replacer = function(orig, head, from_match, tail)
        if string.match(orig, "-shadow.png$") then
            return orig
        end
        return head..to..tail
    end
    gsub_recurse(table, "^((.-)("..from..")(.*))$", replacer)
end

M.NIL = {}

local function merge(tables)
  local ret = {}
  for i, tab in ipairs(tables) do
    for k, v in pairs(tab) do
      if (type(v) == "table") and (type(ret[k] or false) == "table") then
        ret[k] = merge{ret[k], v}
      elseif v == M.NIL then
        ret[k] = nil
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
    return merge{with_graphics, overlay}
end

return M