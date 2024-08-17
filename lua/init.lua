local M = {}

M.version = "0.1.0"

-- Define colors
local colors = {
    bg = "#1E1E1E",
    fg = "#D4D4D4",
    gray = "#808080",
    blue = "#569CD6",
    cyan = "#4EC9B0",
    green = "#6A9955",
    orange = "#CE9178",
    purple = "#C586C0",
    red = "#F44747",
    yellow = "#DCDCAA",
}

function M.setup()
    print("Setting up Sonomin colorscheme...")
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
    print("Sonomin setup complete")
end

return M