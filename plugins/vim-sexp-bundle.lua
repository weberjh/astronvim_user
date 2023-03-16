-- customize mason plugins
return {
  -- vim-sexp and vim-sexp-mappings-for-regular-people only in certain buffers
   {
      "guns/vim-sexp",
      -- enabled = false,
      ft = { "clojure", "lisp", "fennel", "scheme", "janet" },
      dependencies = {
         "tpope/vim-sexp-mappings-for-regular-people",
         "tpope/vim-repeat",
      },
      config = function()
         vim.g.sexp_mappings = {
            ["af"] = "sexp_outer_list",
            ["if"] = "sexp_inner_list",
            ["aF"] = "exp_outer_top_list",
            ["iF"] = "sexp_inner_top_list",
            ["as"] = "exp_outer_string",
            ["is"] = "sexp_inner_string",
            ["ae"] = "sexp_outer_element",
            ["ie"] = "sexp_inner_element"
         }
      end,

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
