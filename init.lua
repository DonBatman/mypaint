mypaint = {}
mypaint.colors = {
	red = {"Red", "ff0000"},
	green = {"Green", "00ff00"},
	white = {"White", "ffffff"},
}
mypaint.paintables = {}

mypaint.register = function(names, colors)
	local ctable = {}
	for _, color in ipairs(colors) do
		ctable[color] = true
	end
	for _, name in ipairs(names) do
		mypaint.paintables[name] = ctable
	end
end

dofile(minetest.get_modpath("mypaint").."/paint.lua")
