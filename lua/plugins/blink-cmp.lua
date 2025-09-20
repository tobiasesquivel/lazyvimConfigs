return {
  "saghen/blink.cmp",
  opts = function(_, opts)
    opts.keymap = vim.tbl_deep_extend("force", opts.keymap or {}, {
      ["<C-j>"] = { "select_next", "fallback" },
      ["<C-k>"] = { "select_prev", "fallback" },
      ["<C-.>"] = { "show" },
      ["<C-e>"] = { "hide" },
    })
    return opts
  end,
}
