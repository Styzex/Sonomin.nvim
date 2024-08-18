if vim.g.colors_name then
    vim.cmd("hi clear")
end

vim.o.termguicolors = true
vim.g.colors_name = "sonomin"

local ok, sonomin = pcall(require, "sonomin")
if not ok then
    return
end

sonomin.setup()