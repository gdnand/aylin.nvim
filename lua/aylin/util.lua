local util = {}
local aylin = require("aylin.theme")

util.highlight = function (group, color)
  local style = color.style and "gui=" .. color.style or "gui=NONE"
  local fg = color.fg and "guifg=" .. color.fg or "guifg=NONE"
  local bg = color.bg and "guibg=" .. color.bg or "guibg=NONE"
  local sp = color.sp and "guisp=" .. color.sp or ""

  local hl = "highlight " .. group .. " " .. style .. " " .. fg .. " " .. bg .. " " .. sp

  vim.cmd(hl)
  if color.link then
    vim.cmd("highlight! link " .. group .. " " .. color.link)
  end
end

function util.onColorScheme()
  if vim.g.colors_name ~= "aylin" then
    vim.cmd([[autocmd! aylin]])
    vim.cmd([[augroup! aylin]])
  end
end

util.contrast = function()
  vim.cmd([[augroup aylin]])
  vim.cmd([[  autocmd!]])
  vim.cmd([[  autocmd ColorScheme * lua require("aylin.util").onColorScheme()]])
  vim.cmd([[  autocmd TermOpen * setlocal winhighlight=Normal:NormalFloat,SignColumn:NormalFloat]])
  vim.cmd([[  autocmd FileType packer setlocal winhighlight=Normal:NormalFloat,SignColumn:NormalFloat]])
  vim.cmd([[  autocmd FileType qf setlocal winhighlight=Normal:NormalFloat,SignColumn:NormalFloat]])
  vim.cmd([[augroup end]])
end

function util.loadColorSet(colorSet)
  for group, colors in pairs(colorSet) do
    util.highlight(group, colors)
  end
end

function util.load()
  vim.cmd("hi clear")
  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end
  -- vim.o.background = "dark"
  vim.o.termguicolors = true
  vim.g.colors_name = "aylin"

  -- load the most importaint parts of the theme
  local editor = aylin.loadEditor()
  local syntax = aylin.loadSyntax()
  local treesitter = aylin.loadTreeSitter()

  -- load editor highlights
  util.loadColorSet(editor)

  -- load syntax highlights
  util.loadColorSet(syntax)

  -- load treesitter highlights
  util.loadColorSet(treesitter)

  aylin.loadTerminal()

  -- imort tables for plugins and lsp
  local plugins = aylin.loadPlugins()
  local lsp = aylin.loadLSP()

  -- load plugin highlights
  util.loadColorSet(plugins)

  -- load lsp highlights
  util.loadColorSet(lsp)
end

return util
