mypaint = {}
mypaint.colors = {
	red = 			{"Red", 			"ff0000"},
	green = 		{"Green", 			"00ff00"},
	white = 		{"White", 			"ffffff"},
	black = 		{"Black",			"000000"},
	blue = 			{"Blue",			"0000ff"},
	brown = 		{"Brown",			"190B07"},
	cyan = 			{"Cyan",			"00ffff"},
	darkgreen =	 	{"Dark Green",		"005000"},
	darkgrey = 		{"Dark Grey",		"1C1C1C"},
	grey = 			{"Grey",			"848484"},
	magenta = 		{"Magenta",			"ff00ff"},
	orange = 		{"Orange",			"ff7700"},
	pink = 			{"Pink",			"FE2E9A"},
	violet = 		{"Violet",			"7f007f"},
	yellow = 		{"Yellow",			"ffff00"},
}
if core.get_modpath("mydye") then
	mypaint.colors = {
	red = 			{"Red", 			"ff0000"},
	green = 		{"Green", 			"00ff00"},
	white = 		{"White", 			"ffffff"},
	black = 		{"Black",			"000000"},
	blue = 			{"Blue",			"0000ff"},
	brown = 		{"Brown",			"190B07"},
	cyan = 			{"Cyan",			"00ffff"},
	darkgreen =	 	{"Dark Green",		"005000"},
	darkgrey = 		{"Dark Grey",		"1C1C1C"},
	grey = 			{"Grey",			"848484"},
	magenta = 		{"Magenta",			"ff00ff"},
	orange = 		{"Orange",			"ff7700"},
	pink = 			{"Pink",			"FE2E9A"},
	violet = 		{"Violet",			"7f007f"},
	yellow = 		{"Yellow",			"ffff00"},
	peachpuff = 	{"Peachpuff", 		"FFDAB9"},
	navy =  		{"Navy", 			"000080"},
	coral = 		{"Coral", 			"FF7F50"},
	khaki = 		{"Khaki", 			"F0E68C"},
	lime = 			{"Lime", 			"00FF00"},
	light_pink = 	{"Light Pink", 		"FFB6C1"},
	light_grey = 	{"Light Grey", 		"D3D3D3"},
	purple = 		{"Purple", 			"800080"},
	maroon = 		{"Maroon", 			"800000"},
	aquamarine = 	{"Aqua Marine", 	"7FFFD4"},
	chocolate = 	{"Chocolate", 		"D2691E"},
	crimson = 		{"Crimson", 		"DC143C"},
	olive = 		{"Olive", 			"808000"},
	white_smoke = 	{"White Smoke", 	"F5F5F5"},
	mistyrose = 	{"Misty Rose", 		"FFE4E1"},
	orchid = 		{"Orchid", 			"DA70D6"},
	}
end

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
