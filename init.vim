source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/editor-config/configuration.vim
source $HOME/.config/nvim/editor-config/key-mappings/keymappings.vim

lua <<EOF
  require'nvim-treesitter.configs'.setup {
    -- Modules and its options go here
    highlight = { enable = true },
    incremental_selection = { enable = true },
    textobjects = { enable = true },
  }
	require('telescope').setup({
		defaults = { file_ignore_patterns = {"node_modules", "autoload"} }
	})
   local cmp = require'cmp'

  cmp.setup({
    snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
	 vim.fn["vsnip#anonymous"](args.body)
        -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
        -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
      end,
    },
    mapping = {
      ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
      ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
      ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
      ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
      ['<C-e>'] = cmp.mapping({
        i = cmp.mapping.abort(),
        c = cmp.mapping.close(),
      }),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    },
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'vsnip' }, -- For vsnip users.
      -- { name = 'luasnip' }, -- For luasnip users.
      -- { name = 'ultisnips' }, -- For ultisnips users.
      -- { name = 'snippy' }, -- For snippy users.
    }, {
      { name = 'buffer' },
    })
  })

  -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline('/', {
    sources = {
      { name = 'buffer' }
    }
  })

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(':', {
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })

	local autosave = require("autosave")

	autosave.setup(
			{
					enabled = true,
					execution_message = "AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S"),
					events = {"InsertLeave", "TextChanged"},
					conditions = {
							exists = true,
							filename_is_not = {},
							filetype_is_not = {},
							modifiable = true
					},
					write_all_buffers = false,
					on_off_commands = true,
					clean_command_line_interval = 0,
					debounce_delay = 135
			}
	)	

  -- Setup lspconfig.
  local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
  -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
  require'lspconfig'.tsserver.setup {
    capabilities = capabilities
 }
  require'lspconfig'.pyright.setup {
    capabilities = capabilities
 }
  require'lspconfig'.bashls.setup {
    capabilities = capabilities
 }
  require'lspconfig'.vimls.setup {
    capabilities = capabilities
 }
 	require'lspconfig'.html.setup {
  	capabilities = capabilities,
 }
 require'lspconfig'.jsonls.setup {
  capabilities = capabilities,
 }
 require'lspconfig'.tailwindcss.setup {{}}
 require('lspconfig').gopls.setup {
    cmd = {"gopls", "serve"},
    settings = {
      gopls = {
        analyses = {
          unusedparams = true,
        },
        staticcheck = true,
      },
    },
  }
	require'lspconfig'.csharp_ls.setup{}

EOF
