return {
  { -- Autoformat
    'stevearc/conform.nvim',
    event = { 'BufWritePre' },
    cmd = { 'ConformInfo' },
    keys = {
      {
        '<leader>f',
        function()
          require('conform').format { async = true, lsp_format = 'fallback' }
        end,
        mode = '',
        desc = '[F]ormat buffer',
      },
    },
    opts = {
      notify_on_error = false,
      format_on_save = function(bufnr)
        -- Disable "format_on_save lsp_fallback" for languages that don't
        -- have a well standardized coding style. You can add additional
        -- languages here or re-enable it for the disabled ones.
        local disable_filetypes = { c = true, cpp = true }
        if disable_filetypes[vim.bo[bufnr].filetype] then
          return nil
        else
          return {
            timeout_ms = 500,
            lsp_format = 'fallback',
          }
        end
      end,
      formatters = {
        sqlfluff = {
          args = { 'format', '-' },
        },
      },

      formatters_by_ft = {
        lua = { 'stylua' },
        sql = { 'sqlfluff', timeout_ms = 15000 },
        -- Conform can also run multiple formatters sequentially
        go = { 'goimports', 'gofumpt', timeout_ms = 2000 },
        python = { 'isort', 'black' },
        css = { 'prettierd', 'prettier' },
        scss = { 'prettierd', 'prettier' },
        less = { 'prettierd', 'prettier' },
        html = { 'prettierd', 'prettier' },
        json = { 'prettierd', 'prettier' },
        jsonc = { 'prettierd', 'prettier' },
        yaml = { 'prettierd', 'prettier' },
        toml = { 'prettierd', 'prettier' },
        -- markdown = { 'prettierd', 'prettier' },
        -- ['markdown.mdx'] = { 'prettierd', 'prettier' },
        graphql = { 'prettierd', 'prettier' },
        handlebars = { 'prettierd', 'prettier' },

        --
        -- You can use a sub-list to tell conform to run *until* a formatter
        -- is found.
        -- javascript = { { "prettierd", "prettier" } },
      },
    },
  },
}
-- vim: ts=2 sts=2 sw=2 et
