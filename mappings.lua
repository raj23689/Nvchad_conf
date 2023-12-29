local M = {}

M.compiler = {
  plugin = true,
  n = {
    ["<F6>"] = {
      "<cmd> CompilerOpen <cr>",
      "Open Compiler",
      opts = { noremap = true, silent = true },
    },
    ["<S-F6>"] = {
      "<cmd> CompilerRedo <cr>",
      "Redo last selected option",
      opts = { noremap = true, silent = true },
    },
    ["<S-F7>"] = {
      "<cmd> CompilerToggleResults <cr>",
      "Toggle compiler results",
      opts = { noremap = true, silent = true },
    }
  }
}

return M
