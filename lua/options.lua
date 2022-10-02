
vim.opt.clipboard = "unnamedplus"

--
-- " show existing tab with 4 spaces width
-- set tabstop=2
-- " " when indenting with '>', use 4 spaces width
-- set shiftwidth=2
-- " " On pressing tab, insert 4 spaces
-- set expandtab
--
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.termguicolors = true
vim.opt.mouse = "a"
vim.opt.wrap = false



--
-- "サーチしたい時に-を含める
-- "https://stackoverflow.com/a/34748079/4624070
--
vim.opt.isk = vim.opt.isk + "-"


local tbl = {1, 2, 3}

function add (o)
  for key,value in pairs(o) do
      print("found member " .. key);
  end
end

