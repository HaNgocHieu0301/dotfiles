---@type NvPluginSpec
return {
  "CopilotC-Nvim/CopilotChat.nvim",
  dependencies = {
    "github/copilot.vim",
    "nvim-lua/plenary.nvim",
  },
  cmd = {
    "CopilotChat",
    "CopilotChatOpen",
    "CopilotChatToggle",
    "CopilotChatExplain",
    "CopilotChatFix",
    "CopilotChatOptimize",
    "CopilotChatDocs",
    "CopilotChatTests",
    "CopilotChatCommit",
  },
  opts = {
    window = {
      layout = "vertical",
      width = 0.35,
    },
    mappings = {
      reset = {
        normal = "<C-r>",
        insert = "<C-r>",
      },
    },
  },
  keys = {
    { "<leader>cc", "<cmd>CopilotChatToggle<CR>", desc = "Copilot Chat toggle" },
    { "<leader>ce", "<cmd>CopilotChatExplain<CR>", mode = { "n", "v" }, desc = "Copilot explain" },
    { "<leader>cf", "<cmd>CopilotChatFix<CR>", mode = { "n", "v" }, desc = "Copilot fix" },
    { "<leader>co", "<cmd>CopilotChatOptimize<CR>", mode = { "n", "v" }, desc = "Copilot optimize" },
    { "<leader>cd", "<cmd>CopilotChatDocs<CR>", mode = { "n", "v" }, desc = "Copilot docs" },
    { "<leader>ct", "<cmd>CopilotChatTests<CR>", mode = { "n", "v" }, desc = "Copilot tests" },
    {
      "<leader>ci",
      function()
        local input = vim.fn.input "Ask Copilot: "
        if input ~= "" then
          vim.cmd("CopilotChat " .. input)
        end
      end,
      desc = "Copilot inline question",
    },
  },
}
