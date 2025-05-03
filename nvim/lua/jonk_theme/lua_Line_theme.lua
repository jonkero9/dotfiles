local cappuu = {
	black        = '#000000',
	white        = '#f9f9f9',
	red          = '#F38BA8',
	green        = '#A6E3A1',
	yellow       = '#e8fc4f',
	blue         = '#89B4FA',
	darkgray     = '#3c3836',
	lightgray    = '#504945',
	inactivegray = '#7c6f64',
}

function SetLuaLineCol(colors)
	return {
		normal = {
			a = { bg = colors.blue, fg = colors.black, gui = 'bold' },
			b = { bg = colors.lightgray, fg = colors.white },
			c = { bg = colors.darkgray, fg = colors.blue }
		},
		insert = {
			a = { bg = colors.red, fg = colors.black, gui = 'bold' },
			b = { bg = colors.lightgray, fg = colors.white },
			c = { bg = colors.lightgray, fg = colors.white }
		},
		visual = {
			a = { bg = colors.yellow, fg = colors.black, gui = 'bold' },
			b = { bg = colors.lightgray, fg = colors.white },
			c = { bg = colors.inactivegray, fg = colors.black }
		},
		replace = {
			a = { bg = colors.red, fg = colors.black, gui = 'bold' },
			b = { bg = colors.lightgray, fg = colors.white },
			c = { bg = colors.black, fg = colors.white }
		},
		command = {
			a = { bg = colors.green, fg = colors.black, gui = 'bold' },
			b = { bg = colors.lightgray, fg = colors.white },
			c = { bg = colors.inactivegray, fg = colors.black }
		},
		inactive = {
			a = { bg = colors.darkgray, fg = colors.blue, gui = 'bold' },
			b = { bg = colors.darkgray, fg = colors.blue },
			c = { bg = colors.darkgray, fg = colors.blue }
		}
	}
end
