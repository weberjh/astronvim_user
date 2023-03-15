-- customize mason plugins
return {
  -- vim-sexp and vim-sexp-mappings-for-regular-people only in certain buffers
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
  -- vim surround in all buffers
   {
      "tpope/vim-surround",
      event = "BufEnter",
  },
}
