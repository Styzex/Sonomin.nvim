print("Loading Sonomin colorscheme...")

if vim.g.colors_name then
    vim.cmd("hi clear")
end

vim.o.termguicolors = true
vim.g.colors_name = "sonomin"

local ok, sonomin = pcall(require, "sonomin")
if not ok then
    print("Failed to load Sonomin module: " .. tostring(sonomin))
    return
end

print("Sonomin module loaded successfully")

sonomin.setup()

print("Sonomin colorscheme v" .. sonomin.version .. " applied successfully")