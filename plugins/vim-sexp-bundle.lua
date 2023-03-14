-- customize mason plugins
return {
  -- use mason-lspconfig to configure LSP installations
   {
      "guns/vim-sexp",
      ft = { "clojure", "lisp", "fennel", "scheme", "janet" },
      dependencies = {
         "tpope/vim-sexp-mappings-for-regular-people",
         "tpope/vim-repeat",
      },
      opts = {
         -- no opts
      },
      -- config = function()
      --    require("vim-sexp").setup()
      -- end,
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
   {
      "tpope/vim-surround",
      event = "BufEnter",
  },
}
