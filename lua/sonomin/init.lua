local M = {}

M.version = "0.1.2"

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
        Character = { fg = colors.green },
        Number = { fg = colors.orange },
        Boolean = { fg = colors.orange },
        Float = { fg = colors.orange },
        Identifier = { fg = colors.fg },
        Function = { fg = colors.blue },
        Statement = { fg = colors.purple },
        Conditional = { fg = colors.purple },
        Repeat = { fg = colors.purple },
        Label = { fg = colors.purple },
        Operator = { fg = colors.purple },
        Keyword = { fg = colors.purple },
        Exception = { fg = colors.purple },
        ["@keyword.return"] = { fg = colors.red },
        PreProc = { fg = colors.purple },
        Include = { fg = colors.purple },
        Define = { fg = colors.purple },
        Macro = { fg = colors.purple },
        PreCondit = { fg = colors.purple },
        Type = { fg = colors.yellow },
        StorageClass = { fg = colors.yellow },
        Structure = { fg = colors.yellow },
        Typedef = { fg = colors.yellow },
        Special = { fg = colors.blue },
        SpecialChar = { fg = colors.orange },
        Tag = { fg = colors.blue },
        Delimiter = { fg = colors.fg },
        SpecialComment = { fg = colors.fg_dark },
        Debug = { fg = colors.orange },
        Underlined = { fg = colors.blue, underline = true },
        Ignore = { fg = colors.fg_gutter },
        Error = { fg = colors.red },
        Todo = { fg = colors.yellow, bold = true },

        -- UI elements
        Cursor = { fg = colors.bg, bg = colors.fg },
        CursorLine = { bg = colors.bg_highlight },
        CursorColumn = { bg = colors.bg_highlight },
        ColorColumn = { bg = colors.bg_highlight },
        LineNr = { fg = colors.fg_gutter },
        CursorLineNr = { fg = colors.fg, bold = true },
        VertSplit = { fg = colors.bg_highlight },
        StatusLine = { fg = colors.fg, bg = colors.bg_highlight },
        StatusLineNC = { fg = colors.fg_dark, bg = colors.bg_dark },
        Pmenu = { fg = colors.fg, bg = colors.bg_dark },
        PmenuSel = { fg = colors.bg, bg = colors.blue },
        PmenuSbar = { bg = colors.bg_highlight },
        PmenuThumb = { bg = colors.fg_dark },
        TabLine = { fg = colors.fg_dark, bg = colors.bg_dark },
        TabLineFill = { bg = colors.bg_dark },
        TabLineSel = { fg = colors.fg, bg = colors.bg },
        Search = { fg = colors.bg, bg = colors.yellow },
        IncSearch = { fg = colors.bg, bg = colors.orange },
        Visual = { bg = colors.bg_highlight },
        VisualNOS = { bg = colors.bg_highlight },
        Folded = { fg = colors.fg_dark, bg = colors.bg_highlight },
        FoldColumn = { fg = colors.fg_gutter, bg = colors.bg },
        SignColumn = { fg = colors.fg_gutter, bg = colors.bg },
        NonText = { fg = colors.fg_gutter },
        SpecialKey = { fg = colors.fg_gutter },
        MatchParen = { fg = colors.orange, bold = true },
        Whitespace = { fg = colors.fg_gutter },

        -- Diff
        DiffAdd = { fg = colors.green, bg = colors.bg },
        DiffChange = { fg = colors.yellow, bg = colors.bg },
        DiffDelete = { fg = colors.red, bg = colors.bg },
        DiffText = { fg = colors.blue, bg = colors.bg },

        -- Git
        GitSignsAdd = { fg = colors.green },
        GitSignsChange = { fg = colors.yellow },
        GitSignsDelete = { fg = colors.red },
    }

    for group, styles in pairs(groups) do
        vim.api.nvim_set_hl(0, group, styles)
    end

    -- After the for loop that sets highlight groups
    vim.api.nvim_set_hl(0, "@keyword.return", { fg = colors.red })
    vim.api.nvim_set_hl(0, "Return", { link = "@keyword.return" })
end

return M