--require'lualine'.setup {
--	options = {
--        theme = "catppuccin"
--    }
--}
local colors = {
	red = '#cdd6f4',
	grey = '#181825',
	black = '#1e1e2e',
	white = '#313244',
	light_green = '#6c7086',
	orange = '#fab387',
	green = '#a6e3a1',
	blue = '#80A7EA',
}
local theme = {
	normal = {
		a = { fg = colors.black, bg = colors.blue },
		b = { fg = colors.blue, bg = colors.white },
		c = { fg = colors.white, bg = colors.black },
		z = { fg = colors.white, bg = colors.black },
	},
	insert = { a = { fg = colors.black, bg = colors.orange } },
	visual = { a = { fg = colors.black, bg = colors.green } },
	replace = { a = { fg = colors.black, bg = colors.green } },
}

local vim_icons = {
	function()
		return " "
	end,
	separator = { left = "", right = "" },
	color = { bg = "#313244", fg = "#80A7EA" },
}

local space = {
	function()
		return " "
	end,
	color = { bg = colors.black, fg = "#80A7EA" },
}

local filename = {
	'filename',
	color = { bg = "#80A7EA", fg = "#242735" },
	separator = { left = "", right = "" },
}

local filetype = {
	"filetype",
	icon_only = true,
	colored = false,
	color = { bg = "#80A7EA"},
	--color = { bg = "#313244" },
	separator = { left = "", right = "" },
}

local filetype_tab = {
	"filetype",
	icon_only = true,
	colored = true,
	color = { bg = "#313244" },
}

local buffer = {
	--require 'tabline'.tabline_buffers,
	separator = { left = "", right = "" },
}

local tabs = {
	--require 'tabline'.tabline_tabs,
	separator = { left = "", right = "" },
}

local fileformat = {
	'fileformat',
	color = { bg = "#b4befe", fg = "#313244" },
	separator = { left = "", right = "█" },
}

local encoding = {
	'encoding',
	color = { bg = "#313244", fg = "#80A7EA" },
	separator = { left = "", right = "" },
}

local branch = {
	'branch',
	color = { bg = "#a6e3a1", fg = "#313244" },
	separator = { left = "", right = "" },
}

local diff = {
	"diff",
	diff_color = {
	  added = { fg = "#99c794" },
	  modified = { fg = "#5bb7b8" },
	  removed = { fg = "#ec5f67" },
    },
	color = { bg = "#313244", fg = "#313244" },
	separator = { left = "", right = "" },
}

local modes = {
	'mode', fmt = function(str) return str:sub(1, 1) end,
	color = { bg = "#fab387", fg = "#1e1e2e" },
	--separator = { left = "", right = "" },
	separator = { left = "█", right = "" },
	
	
}

local dia = {
	'diagnostics',
	color = { bg = "#313244", fg = "#80A7EA" },
	separator = { left = "", right = "" },
}

require('lualine').setup {

	options = {
		icons_enabled = true,
		theme = theme,
		component_separators = { left = '', right = '' },
		section_separators = { left = '', right = '' },
		disabled_filetypes = {
			statusline = {},
			winbar = {},
		},
		ignore_focus = {},
		always_divide_middle = true,
		globalstatus = true,
		refresh = {
			statusline = 1000,
			tabline = 1000,
			winbar = 1000,
		}
	},

	sections = {
		lualine_a = {
			--{ 'mode', fmt = function(str) return str:gsub(str, "  ") end },
			modes,
			--vim_icons,
			--{ 'mode', fmt = function(str) return str:sub(1, 1) end },
		},
		lualine_b = {
			space,
		},
		lualine_c = {
			filename,
			filetype,
			space,
			branch,
			diff,
		},
		lualine_x = {
			space,
		},
		lualine_y = {
			dia,
			space,
		},
		lualine_z = {
			encoding,
			fileformat,
		}
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = { 'filename' },
		lualine_x = { 'location' },
		lualine_y = {},
		lualine_z = {}
	},
	tabline = {
	},
	winbar = {
		lualine_c = { bar },
	},
	inactive_winbar = {},

}
