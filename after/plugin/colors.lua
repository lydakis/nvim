require('rose-pine').setup({
    disable_background = true
})

function ColorMyPencils(color) 
	color = color or "solarized"
	vim.cmd.colorscheme(color)
end

ColorMyPencils()
