local M = {}

M.version = "0.1.0"

local colors = {
    bg = "#1f1f1f",
    fg = "#e2e2e3",
    gray = "#7f8490",
    blue = "#76cce0",
    cyan = "#76cce0",
    green = "#9ed072",
    orange = "#f39660",
    purple = "#b39df3",
    red = "#fc5d7c",
    yellow = "#e7c664",
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
        NormalFloat = { fg = colors.fg, bg = colors.bg },
        Comment = { fg = colors.gray },
        Constant = { fg = colors.purple },
        String = { fg = colors.yellow },
        Character = { fg = colors.yellow },
        Number = { fg = colors.purple },
        Boolean = { fg = colors.purple },
        Float = { fg = colors.purple },
        Identifier = { fg = colors.fg },
        Function = { fg = colors.green },
        Statement = { fg = colors.red },
        Conditional = { fg = colors.red },
        Repeat = { fg = colors.red },
        Label = { fg = colors.red },
        Operator = { fg = colors.red },
        Keyword = { fg = colors.red },
        Exception = { fg = colors.red },
        PreProc = { fg = colors.red },
        Include = { fg = colors.red },
        Define = { fg = colors.red },
        Macro = { fg = colors.red },
        PreCondit = { fg = colors.red },
        Type = { fg = colors.blue, italic = true },
        StorageClass = { fg = colors.blue, italic = true },
        Structure = { fg = colors.blue, italic = true },
        Typedef = { fg = colors.blue, italic = true },
        Special = { fg = colors.orange },
        SpecialChar = { fg = colors.orange },
        Tag = { fg = colors.blue },
        Delimiter = { fg = colors.fg },
        SpecialComment = { fg = colors.gray },
        Debug = { fg = colors.orange },
        Underlined = { fg = colors.blue, underline = true },
        Ignore = { fg = colors.gray },
        Error = { fg = colors.red },
        Todo = { fg = colors.yellow, bold = true },

        -- UI elements
        Cursor = { fg = colors.bg, bg = colors.fg },
        CursorLine = { bg = "#282828" },
        LineNr = { fg = "#727272" },
        CursorLineNr = { fg = colors.yellow, bold = true },
        VertSplit = { fg = "#2A2A2A" },
        StatusLine = { fg = colors.fg, bg = "#1A1A1A" },
        StatusLineNC = { fg = "#7E7E7E", bg = "#1A1A1A" },
        Pmenu = { fg = colors.fg, bg = "#1A1A1A" },
        PmenuSel = { fg = colors.bg, bg = colors.blue },
        Search = { fg = colors.bg, bg = colors.yellow },
        IncSearch = { fg = colors.bg, bg = colors.orange },
        Visual = { bg = "#212121" },

        -- Syntax highlighting
        ["@keyword.return"] = { fg = colors.red },
        ["@variable"] = { fg = colors.fg },
        ["@parameter"] = { fg = colors.orange, italic = true },
        ["@field"] = { fg = colors.fg },
        ["@property"] = { fg = colors.fg },
        ["@constructor"] = { fg = colors.blue },
    }

    for group, styles in pairs(groups) do
        vim.api.nvim_set_hl(0, group, styles)
    end

    -- Additional highlight groups
    vim.api.nvim_set_hl(0, "@keyword.return", { fg = colors.red })
    vim.api.nvim_set_hl(0, "Return", { link = "@keyword.return" })
end

return M