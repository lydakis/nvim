require('rose-pine').setup({
    disable_background = true
})

local c = require('vscode.colors').get_colors()
require('vscode').setup({
    -- Alternatively set style in setup
    -- style = 'light',

    -- Enable italic comment
    italic_comments = true,

    -- Override colors (see ./lua/vscode/colors.lua)
    -- color_overrides = {
    --     vscLineNumber = '#000000',
    -- },

    -- Override highlight groups (see ./lua/vscode/theme.lua)
    group_overrides = {
        -- this supports the same val table as vim.api.nvim_set_hl
        -- use colors from this colorscheme by requiring vscode.colors!
        Cursor = { fg=c.vscDarkBlue, bg=c.vscLightGreen, bold=true },
    }
})
require('vscode').load()

local function change_background()
  local m = vim.fn.system("defaults read -g AppleInterfaceStyle")
  m = m:gsub("%s+", "") -- trim whitespace
  if m == "Dark" then
    vim.o.background = "dark" 
  else
    vim.o.background = "light" 
  end
end

function ColorMyPencils(color) 
    change_background()
    color = color or "vscode"
    vim.cmd.colorscheme(color)
end

ColorMyPencils()
