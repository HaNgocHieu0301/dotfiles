require "nvchad.options"

local custom = {
  g = {
    dap_virtual_text = true,
    bookmark_sign = "",
    skip_ts_context_commentstring_module = true,
    tabufline_visible = true,
    showtabline = 1,
    python3_host_prog = "/usr/bin/python3",
  },
  opt = {
    encoding = "utf-8",
    fileencoding = "utf-8",
    -- Folds
    foldenable = true,
    foldmethod = "expr",
    foldexpr = "v:lua.vim.treesitter.foldexpr()",
    foldcolumn = "1",
    foldtext = "",
    foldlevel = 99,
    foldlevelstart = 5,
    foldnestmax = 5,
    fillchars = {
      eob = " ",
      fold = " ",
      foldopen = "",
      foldsep = " ",
      foldclose = "",
      lastline = " ",
    },
    -- Prevent issues with some language servers
    backup = false,
    swapfile = false,
    -- Always show minimum n lines after/before current line
    scrolloff = 10,
    -- True color support
    termguicolors = true,
    emoji = false,
    relativenumber = true,
    -- Line break/wrap behaviours
    wrap = true,
    linebreak = true,
    textwidth = 0,
    -- wrapmargin = 0,
    colorcolumn = "+1",
    -- Indentation values
    tabstop = 4,
    shiftwidth = 4, -- 0 forces same value as tabstop
    expandtab = false,
    autoindent = true,
    cursorline = true,
    cursorlineopt = "both",
    inccommand = "split",
    ignorecase = true,
    updatetime = 100,
    lazyredraw = false,
  },
}

for i, opts in pairs(custom) do
  for k, v in pairs(opts) do
    vim[i][k] = v
  end
end

vim.opt.iskeyword:append { "_", "@", ".", "-" }
vim.opt.path:append { "**", "lua", "src" }
