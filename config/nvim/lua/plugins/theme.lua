local f = vim.fn.expand("~/.config/theme/current/neovim.lua")
return vim.fn.filereadable(f) == 1 and dofile(f) or {}
