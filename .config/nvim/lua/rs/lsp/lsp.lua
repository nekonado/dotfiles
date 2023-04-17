-- nvim-lsp
local lsp_config = require('lspconfig')
local mason = require('mason')
local mason_lspconfig = require('mason-lspconfig')
local mason_null_ls = require('mason-null-ls')
local null_ls = require('null-ls')

require('dressing').setup()
require('lspsaga').setup()
require('lsp_signature').setup({ hint_enable = false })

mason.setup()
mason_null_ls.setup({
  ensure_installed = { 'prettier' },
  automatic_installation = true,
})
null_ls.setup({
  sources = {
    null_ls.builtins.formatting.prettier,
  },
})

mason_lspconfig.setup({
  ensure_installed = {
    'tsserver',
    'eslint',
  },
  automatic_installation = true,
})

mason_lspconfig.setup_handlers({
  function(server_name)
    local opts = {
      capabilities = require('cmp_nvim_lsp').default_capabilities(),
    }

    lsp_config[server_name].setup(opts)
  end,
})

-- For Global definition 'vim'
-- https://github.com/neovim/nvim-lspconfig/blob/da7461b596d70fa47b50bf3a7acfaef94c47727d/doc/server_configurations.md#sumneko_lua
lsp_config.lua_ls.setup {
  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT',
      },
      diagnostics = {
        globals = { 'vim' },
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
      },
      telemetry = {
        enable = false,
      },
    },
  },
}

vim.api.nvim_create_autocmd({ 'CursorHold' }, {
  pattern = { '*' },
  callback = function()
    require('lspsaga.diagnostic').show_cursor_diagnostics()
  end,
})

vim.api.nvim_create_autocmd({ 'FileType' }, {
  pattern = { 'typescript', 'typescriptreact', 'typescript.tsx' },
  callback = function()
    vim.keymap.set({ 'n' }, '<Plug>(lsp)f', function()
      vim.cmd([[EslintFixAll]])
      vim.lsp.buf.format({ name = 'null-ls' })
    end)
  end,
})

-- Build-in LSP Function
-- keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>')
-- keymap('n', 'gf', '<cmd>lua vim.lsp.buf.format { async = true }<CR>')
-- keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>')
-- keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>')
-- keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>')
-- keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>')
-- keymap('n', 'gt', '<cmd>lua vim.lsp.buf.type_definition()<CR>')
-- keymap('n', 'gn', '<cmd>lua vim.lsp.buf.rename()<CR>')
-- keymap('n', 'ga', '<cmd>lua vim.lsp.buf.code_action()<CR>')
-- keymap('n', 'ge', '<cmd>lua vim.diagnostic.open_float()<CR>')
-- keymap('n', 'g]', '<cmd>lua vim.diagnostic.goto_next()<CR>')
-- keymap('n', 'g[', '<cmd>lua vim.diagnostic.goto_prev()<CR>')

local function show_documentation()
  local ft = vim.opt.filetype._value
  if ft == 'vim' or ft == 'help' then
    vim.cmd([[execute 'h ' . expand('<cword>') ]])
  else
    require('lspsaga.hover').render_hover_doc()
  end
end

-- map prefix
vim.keymap.set({ 'n', 'x' }, '<Space>', '<Nop>')
vim.keymap.set({ 'n', 'x' }, '<Plug>(lsp)', '<Nop>')
vim.keymap.set({ 'n', 'x' }, 'g', '<Plug>(lsp)')

vim.keymap.set({ 'n' }, 'K', show_documentation)
vim.keymap.set({ 'n' }, '<Plug>(lsp)f', vim.lsp.buf.format)
vim.keymap.set({ 'n' }, '<Plug>(lsp)r', '<Cmd>Telescope lsp_references<CR>')
vim.keymap.set({ 'n' }, '<Plug>(lsp)d', '<Cmd>Telescope lsp_definitions<CR>')
-- vim.keymap.set({ 'n' }, '<Plug>(lsp)d', vim.lsp.buf.definition)
vim.keymap.set({ 'n' }, '<Plug>(lsp)t', '<Cmd>Telescope lsp_type_definitions<CR>')
vim.keymap.set({ 'n' }, '<Plug>(lsp)i', '<Cmd>Telescope lsp_implementations<CR>')
vim.keymap.set({ 'n' }, '<Plug>(lsp)n', require('lspsaga.rename').rename)
vim.keymap.set({ 'n' }, '<Plug>(lsp)a', require('lspsaga.codeaction').code_action)
vim.keymap.set({ 'n' }, '<Plug>(lsp)e', '<Cmd>Telescope diagnostics<CR>')
vim.keymap.set({ 'n' }, '<Plug>(lnp)]', require('lspsaga.diagnostic').navigate('next'))
vim.keymap.set({ 'n' }, '<Plug>(lsp)[', require('lspsaga.diagnostic').navigate('prev'))
vim.keymap.set({ 'n' }, '<Plug>(lsp)q', '<Cmd>Telescope quickfix<CR>')

