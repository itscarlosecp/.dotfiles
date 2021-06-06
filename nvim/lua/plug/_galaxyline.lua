local gl = require"galaxyline"

local colors = {
	bg = '#262626',
	yellow = '#DCDCAA',
	dark_yellow = '#D7BA7D',
	cyan = '#4EC9B0',
	green = '#608B4E',
	light_green = '#B5CEA8',
	string_orange = '#CE9178',
	orange = '#CE9178',
	purple = '#C586C0',
	magenta = '#D16D9E',
	grey =	'#CCCCCC',
	blue = '#5fafd7',
	vivid_blue = '#4FC1FF',
	light_blue = '#9CDCFE',
	red = '#D16969',
	error_red = '#F44747',
	info_yellow = '#FFCC66'
}

gl.section.left[1] = {
	ViMode = {
		provider = function()
			-- Auto change color according the vim mode
			local mode_color = {
				n = colors.blue,
				i = colors.info_yellow,
				v = colors.purple,
				[''] = colors.purple,
				V = colors.purple,
				c = colors.magenta,
				no = colors.blue,
				s = colors.orange,
				S = colors.orange,
				ic = colors.yellow,
				R = colors.red,
				Rv = colors.red,
				cv = colors.blue,
				ce = colors.blue,
				r = colors.cyan,
				rm = colors.cyan,
				['r?'] = colors.cyan,
				['!'] = colors.blue,
				t = colors.blue
			}
			vim.api.nvim_command('hi GalaxyViMode guifg=' .. mode_color[vim.fn.mode()])
			return '▊ '
		end,
		highlight = {colors.red, colors.bg}
	}
}
