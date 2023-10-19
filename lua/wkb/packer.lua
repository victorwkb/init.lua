-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`local builtin = require('telescope.builtin')
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.4',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    -- Material Theme
    use({
        'marko-cerovac/material.nvim',
        as = 'material',
    })

    -- Lualine
    use {
        'hoob3rt/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -- Treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }
    -- Context Treesitter
    use('nvim-treesitter/nvim-treesitter-context')

    -- Harpoon
    use('theprimeagen/harpoon')

    -- Undotree
    use('mbbill/undotree')

    -- Fugitive
    use('tpope/vim-fugitive')

    -- LSP
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' }, -- Required
            {
                'williamboman/mason.nvim',
                run = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },             -- Required
            { 'hrsh7th/cmp-nvim-lsp' },         -- Required
            { 'L3MON4D3/LuaSnip' },             -- Required
            { 'saadparwaiz1/cmp_luasnip' },     -- Optional
            { 'rafamadriz/friendly-snippets' }, -- Optional
            { 'hrsh7th/cmp-buffer' },           -- Optional
            { 'hrsh7th/cmp-nvim-lua' },         -- Optional
        }
    }

    -- Copilot
    use {
        "zbirenbaum/copilot.lua",
        cmd = "Copilot",
        event = "InsertEnter",
        config = function()
            require("copilot").setup({
                suggestion = {
                    auto_trigger = true,
                    keymap = {
                        accept = false,
                    },
                },
            })
            vim.keymap.set('i', '<Tab>', function()
                if require("copilot.suggestion").is_visible() then
                    require("copilot.suggestion").accept()
                else
                    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Tab>", true, false, true), "n", false)
                end
            end, { desc = "Super Tab" })
        end,
    }

    -- Null-ls
--    use({
--        'jose-elias-alvarez/null-ls.nvim',
--        requires = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
--    })

    -- Trouble
    use({
        'folke/trouble.nvim',
        config = function()
            require('trouble').setup {
                icons = false,
            }
        end
    })

    -- Indent-blankline
    use('lukas-reineke/indent-blankline.nvim')

    -- Wakatime tracker
    use('wakatime/vim-wakatime')
end)
