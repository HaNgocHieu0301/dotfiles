---@type NvPluginSpec
return {
  "MeanderingProgrammer/render-markdown.nvim",
  ft = { "markdown" },
  cmd = { "RenderMarkdown" },
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons",
  },
  init = function()
    vim.keymap.set("n", "<leader>mt", "<cmd>RenderMarkdown toggle<CR>", { desc = "Toggle Markdown render" })
    vim.keymap.set("n", "<leader>mP", "<cmd>RenderMarkdown preview<CR>", { desc = "Preview rendered Markdown" })
  end,
  ---@module "render-markdown"
  ---@type render.md.UserConfig
  opts = {
    enabled = true,
    render_modes = { "n", "c", "t" },
    file_types = { "markdown" },
    max_file_size = 10.0,
    completions = {
      lsp = { enabled = true },
    },
    heading = {
      position = "overlay",
      width = "full",
      signs = { "󰫎 " },
    },
    code = {
      style = "full",
      position = "left",
      width = "full",
      border = "hide",
      language_icon = true,
      language_name = true,
    },
    bullet = {
      icons = { "●", "○", "◆", "◇" },
    },
    checkbox = {
      unchecked = { icon = "󰄱 " },
      checked = { icon = "󰱒 " },
      custom = {
        todo = { raw = "[-]", rendered = "󰥔 ", highlight = "RenderMarkdownTodo" },
      },
    },
    pipe_table = {
      preset = "round",
      cell = "padded",
    },
    quote = {
      icon = "▋",
    },
    win_options = {
      conceallevel = {
        default = vim.o.conceallevel,
        rendered = 3,
      },
      concealcursor = {
        default = vim.o.concealcursor,
        rendered = "",
      },
    },
  },
}
