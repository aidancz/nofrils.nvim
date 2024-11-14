-- https://github.com/nekonako/xresources-nvim/blob/master/lua/xresources.lua

local function get_xresources_color (c)
	local command = io.popen('xrdb -query | grep ' .. c .. ' -m 1 | cut -f 2')
	local color = command:read("*l")
	return color
end

local x = {
	fg  = get_xresources_color('foreground');
	bg  = get_xresources_color('background');
	c0  = get_xresources_color('color0');
	c1  = get_xresources_color('color1');
	c2  = get_xresources_color('color2');
	c3  = get_xresources_color('color3');
	c4  = get_xresources_color('color4');
	c5  = get_xresources_color('color5'),
	c6  = get_xresources_color('color6');
	c7  = get_xresources_color('color7');
	c8  = get_xresources_color('color8');
	c9  = get_xresources_color('color9');
	c10 = get_xresources_color('color10');
	c11 = get_xresources_color('color11');
	c12 = get_xresources_color('color12');
	c13 = get_xresources_color('color13');
	c14 = get_xresources_color('color14');
	c15 = get_xresources_color('color15');

	black_alt = get_xresources_color('color_black_alt');
	white_alt = get_xresources_color('color_white_alt');
}

return x
