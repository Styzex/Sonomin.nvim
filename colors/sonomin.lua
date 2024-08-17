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

function M.setup()
    print("Setting up Sonomin colorscheme...")
    -- ... rest of your setup function ...
    print("Sonomin setup complete")
end

require("sonomin").setup()

print("Sonomin colorscheme loaded successfully")