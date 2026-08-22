---@type NvPluginSpec
return {
  "github/copilot.vim",
  event = "InsertEnter",
  cmd = "Copilot",
  init = function()
    -- Keep Tab free for completion engines like Supermaven/cmp.
    vim.g.copilot_no_tab_map = true
    vim.g.copilot_assume_mapped = true
  end,
  config = function()
    vim.keymap.set("i", "<C-j>", 'copilot#Accept("<CR>")', {
      expr = true,
      replace_keycodes = false,
      silent = true,
      desc = "Copilot accept",
    })
    vim.keymap.set("i", "<C-]>", "<Plug>(copilot-next)", {
      silent = true,
      desc = "Copilot next",
    })
    vim.keymap.set("i", "<C-,>", "<Plug>(copilot-previous)", {
      silent = true,
      desc = "Copilot previous",
    })
    vim.keymap.set("i", "<C-x>", "<Plug>(copilot-dismiss)", {
      silent = true,
      desc = "Copilot dismiss",
    })
  end,
}
