return {
  -- GDScript syntax highlighting
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, { "gdscript" })
    end,
  },

  -- GDScript LSP
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        gdscript = {},
      },
    },
  },

  -- Optional: run/debug Godot from Neovim
  {
    "Lommix/godot.nvim",
    ft = { "gdscript", "gd", "tscn", "tres" },
    cmd = {
      "GodotDebug",
      "GodotBreakAtCursor",
      "GodotStep",
      "GodotQuit",
      "GodotContinue",
    },
    opts = {
      bin = "godot",
    },
  },
}
