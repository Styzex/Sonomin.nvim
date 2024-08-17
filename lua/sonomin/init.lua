local M = {}

M.version = "0.1.1"

-- Define colors
local colors = {
    -- Background colors
    bg = "#1f1f1f",
    bg_dark = "#181818",
    bg_highlight = "#282828",
    
    -- Foreground colors
    fg = "#e2e2e3",
    fg_dark = "#7f8490",
    fg_gutter = "#3b3d4b",
    
    -- Base colors
    red = "#fc5d7c",
    orange = "#f39660",
    yellow = "#e7c664",
    green = "#9ed072",
    blue = "#76cce0",
    purple = "#b39df3",
    cyan = "#f39660",
}

function M.setup()
    vim.cmd("hi clear")
    if vim.fn.exists("syntax_on") then
        vim.cmd("syntax reset")
    end
    vim.o.background = "dark"
    vim.o.termguicolors = true
    vim.g.colors_name = "sonomin"

    local groups = {
        -- Highlight groups
        Normal = { fg = colors.fg, bg = colors.bg },
        NormalFloat = { fg = colors.fg, bg = colors.bg_dark },
        Comment = { fg = colors.fg_dark },
        Constant = { fg = colors.orange },
        String = { fg = colors.green },
        Identifier = { fg = colors.blue },
        Function = { fg = colors.purple },
        Statement = { fg = colors.purple },
        PreProc = { fg = colors.cyan },
        Type = { fg = colors.yellow },
        Special = { fg = colors.orange },
        Underlined = { fg = colors.blue, underline = true },
        Todo = { fg = colors.yellow, bold = true },
        Error = { fg = colors.red },

        -- UI elements
        LineNr = { fg = colors.fg_gutter },
        CursorLine = { bg = colors.bg_highlight },
        CursorLineNr = { fg = colors.fg, bold = true },
        VertSplit = { fg = colors.bg_highlight },
        StatusLine = { fg = colors.fg, bg = colors.bg_highlight },
        StatusLineNC = { fg = colors.fg_dark, bg = colors.bg_dark },
        Pmenu = { fg = colors.fg, bg = colors.bg_dark },
        PmenuSel = { fg = colors.bg, bg = colors.blue },
        Search = { fg = colors.bg, bg = colors.yellow },
        IncSearch = { fg = colors.bg, bg = colors.orange },

        -- Syntax highlighting
        Keyword = { fg = colors.purple },
        Operator = { fg = colors.cyan },
        Method = { fg = colors.blue },
        Field = { fg = colors.cyan },
        Variable = { fg = colors.fg },
        VariableBuiltin = { fg = colors.red },
        Class = { fg = colors.yellow },
        Interface = { fg = colors.yellow },
        Namespace = { fg = colors.yellow },

        -- Git highlighting
        GitSignsAdd = { fg = colors.green },
        GitSignsChange = { fg = colors.blue },
        GitSignsDelete = { fg = colors.red },

        -- Add more highlight groups as needed
    }

    for group, styles in pairs(groups) do
        vim.api.nvim_set_hl(0, group, styles)
    end
end

return M