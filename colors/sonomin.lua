print("Loading Sonomin colorscheme...")

if vim.g.colors_name then
    vim.cmd("hi clear")
end

vim.o.termguicolors = true
vim.g.colors_name = "sonomin"

local ok, _ = pcall(require, "sonomin")
if not ok then
    print("Failed to load Sonomin module")
    return
end

local M = {}

M.version = "0.1.0"

function M.setup()
    print("Setting up Sonomin colorscheme v" .. M.version)
    -- ... rest of your setup function ...
    print("Sonomin setup complete")
end

require("sonomin").setup()

print("Sonomin colorscheme v" .. M.version .. " loaded successfully")