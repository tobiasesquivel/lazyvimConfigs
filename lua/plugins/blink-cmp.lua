-- return {
--   "saghen/blink.cmp",
-- dependencies = { "rafamadriz/friendly-snippets" },
-- opts = {
--     keymap = {
--       ["<C-j>"] = { "select_next", "fallback" },
--       ["<C-k>"] = { "select_prev", "fallback" },
--       ["<C-Space>"] = { "show" },
--       ["<C-e>"] = { "hide" },
--       ["<CR>"] = { "accept", "fallback" },
--     },
--   },
-- }

return {
  "saghen/blink.cmp",
  opts = function(_, opts)
    opts.keymap = vim.tbl_deep_extend("force", opts.keymap or {}, {
      ["<C-j>"] = { "select_next", "fallback" },
      ["<C-k>"] = { "select_prev", "fallback" },
      ["<C-Space>"] = { "show" },
      ["<C-e>"] = { "hide" },
    })
    return opts
  end,
}
