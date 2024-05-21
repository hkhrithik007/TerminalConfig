local lint = require("lint")

lint.linters_by_ft = {
  python = { "pylint" },
  lua = { "luacheck" },
  java = { "checkstyle" },
  kotlin = { "ktlint" },
}

local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {

  callback = function()
    lint.try_lint()
  end,
})

vim.keymap.set("n", "<leader>l", function()
  lint.try_lint()
end, { desc = "Trigger linting for current file" })
