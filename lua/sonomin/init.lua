local M = {}

M.version = "0.1.1"

-- Define colors
local colors = {
    bg = "#282c34",
    fg = "#abb2bf",
    gray = "#5c6370",
    blue = "#61afef",
    cyan = "#56b6c2",
    green = "#98c379",
    orange = "#d19a66",
    purple = "#c678dd",
    red = "#e06c75",
    yellow = "#e5c07b",
    light_gray = "#848b98",
    dark_gray = "#3e4452",
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
        Comment = { fg = colors.green },
        Constant = { fg = colors.orange },
        String = { fg = colors.orange },
        Identifier = { fg = colors.cyan },
        Function = { fg = colors.yellow },
        Statement = { fg = colors.blue },
        PreProc = { fg = colors.purple },
        Type = { fg = colors.blue },
        Special = { fg = colors.cyan },
        Underlined = { fg = colors.blue, underline = true },
        Todo = { fg = colors.yellow, bold = true },
        Error = { fg = colors.red },

        -- UI elements
        LineNr = { fg = colors.gray },
        CursorLine = { bg = "#2D2D2D" },
        CursorLineNr = { fg = colors.fg, bold = true },
        VertSplit = { fg = colors.gray },
        StatusLine = { fg = colors.fg, bg = "#252526" },
        StatusLineNC = { fg = colors.gray, bg = "#252526" },

        -- Add more highlight groups as needed
    }

    for group, styles in pairs(groups) do
        vim.api.nvim_set_hl(0, group, styles)
    end
end

return M