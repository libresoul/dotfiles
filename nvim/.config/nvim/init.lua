-- KEYBINDINGS
vim.o.number = true
vim.o.relativenumber = true
vim.o.wrap = false
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smartindent = true
vim.opt.expandtab = true
vim.o.swapfile = false
vim.g.mapleader = " "
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.scrolloff = 8
vim.o.winborder = "rounded"
vim.o.termguicolors = true

vim.keymap.set('n', '<leader>pe', vim.cmd.Ex)
vim.keymap.set("n", "<C-j>", "<C-w><C-w>")
vim.keymap.set("n", "<C-k>", "<C-w><C-p>")
vim.keymap.set("n", "<C-c>", "<cmd>nohlsearch<CR>")
vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set("v", "<C-c>", "<Esc>")
vim.keymap.set("i", "<C-a>", "<C-o><S-a>")
vim.keymap.set("i", "<C-s>", "<C-o><S-i>")
vim.keymap.set("i", "<C-d>", "<C-o><S-s>")
vim.keymap.set("t", "<C-q>", "<C-\\><C-n>")
vim.keymap.set('v', '<leader>pe', ':Explore<CR>')
vim.keymap.set("n", "<leader>t", vim.cmd.tabnew)
vim.keymap.set("n", "<A-h>", vim.cmd.tabprev)
vim.keymap.set("n", "<A-l>", vim.cmd.tabnext)
vim.keymap.set("n", "<leader>x", function()
    vim.cmd("split")
    vim.cmd("wincmd j")
    vim.cmd("set nonumber")
    vim.cmd("set norelativenumber")
    vim.cmd("resize 12")
    vim.cmd("terminal")
end)
vim.keymap.set("n", "<leader>z", function()
    vim.cmd("vsplit")
    vim.cmd("wincmd l")
    vim.cmd("set nonumber")
    vim.cmd("set norelativenumber")
    vim.cmd("terminal")
end)

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")

-- Move lines
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

-- Half page jumping in the middle
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Search terms in the middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- PACKAGES
vim.pack.add({
    { src = "https://github.com/vague-theme/vague.nvim" },
    { src = "https://github.com/nvim-mini/mini.pick" },
    { src = "https://github.com/neovim/nvim-lspconfig" },
    { src = "https://github.com/mason-org/mason.nvim" },
    { src = "https://github.com/mason-org/mason-lspconfig.nvim" },
    { src = "https://github.com/L3MON4D3/LuaSnip" },
    { src = "https://github.com/rafamadriz/friendly-snippets" },
    { src = "https://github.com/windwp/nvim-autopairs" },
    { src = "https://github.com/saghen/blink.cmp" },
    { src = "https://github.com/lambdalisue/vim-suda" },
    { src = "https://github.com/nvim-lua/plenary.nvim" },
    { src = "https://github.com/nvim-flutter/flutter-tools.nvim" },
    { src = "https://github.com/stevearc/conform.nvim" },
    { src = "https://github.com/ThePrimeagen/harpoon",           version = "harpoon2" },
})

-- MASON

require("mason").setup()

-- Pick

require('mini.pick').setup({
    -- mappings = {
    --     move_down = '<C-j>',
    --     move_up = '<C-k>',
    -- },
})

-- vim.keymap.set('n', '<leader>pf', function()
--     require('mini.pick').builtin.cli({
--         command = {
--             'rg',
--             '--files',
--             '--hidden',
--             '--glob', '!.git/',
--             '--glob', '!node_modules/',
--         },
--     })
-- end, { desc = 'Pick files with custom rg' })
vim.keymap.set('n', '<leader>pf', '<cmd>Pick files<CR>')
vim.keymap.set('n', '<leader>pp', '<cmd>Pick files tool="git"<CR>')
vim.keymap.set('n', '<leader>pg', '<cmd>Pick grep_live<CR>')

-- flutter tools
require("flutter-tools").setup {}

-- harpoon
local harpoon = require("harpoon")

harpoon:setup()

vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)

vim.keymap.set("n", "<A-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<A-1>", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<A-2>", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<A-3>", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<A-4>", function() harpoon:list():select(4) end)

vim.keymap.set("n", "<A-h>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<A-l>", function() harpoon:list():next() end)

-- conform

local conform = require("conform")

conform.setup({
    formatters_by_ft = {
        python = { "black" }
    },
    default_format_opts = {
        lsp_format = "fallback"
    }
})

vim.keymap.set("n", "<leader>ff", function() conform.format() end)
vim.keymap.set("v", "<leader>ff", function() conform.format() end)

-- LSP
require("mason-lspconfig").setup()

vim.lsp.config('lua_ls', {
    settings = {
        Lua = {
            runtime = {
                version = "LuaJIT",
            },
            diagnostics = {
                globals = {
                    'vim',
                    'require'
                },
            },
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
            },
            telemetry = {
                enable = false,
            },
        },
    },
})

vim.lsp.config('tailwindcss', {
    settings = {
        Lua = {
            runtime = {
                version = "LuaJIT",
            },
            diagnostics = {
                globals = {
                    'vim',
                    'require'
                },
            },
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
            },
            telemetry = {
                enable = false,
            },
        },
    },
})

vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*",
    callback = function(args)
        local clients = vim.lsp.get_clients({ bufnr = args.buf })
        local formatters = conform.list_all_formatters()

        if #formatters > 0 then
            conform.format()
            return
        end

        if #clients > 0 then
            vim.lsp.buf.format({ bufnr = args.buf })
        end
    end,
}) -- An autocommand that formats on save

-- vim.keymap.set("n", "<leader>ff", vim.lsp.buf.format)
vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

-- SNIPPETS

require("luasnip.loaders.from_vscode").lazy_load()


-- COMPLETIONS

require("blink.cmp").setup({
    keymap = {
        preset = 'super-tab',
        ['<C-space>'] = { function(cmp) cmp.show({ providers = { 'snippets' } }) end },
        ['<CR>'] = { 'accept', 'fallback' },
    },
    signature = { enabled = true },
    completion = {
        ghost_text = { enabled = true },
        documentation = { auto_show = true },
        menu = {
            draw = {
                treesitter = { "lsp" }
            }
        },
    },
    fuzzy = { implementation = "lua" }
})

-- DIAGNOSTICS

vim.diagnostic.config({
    virtual_text = true,
    signs = true,
    update_in_insert = true,
    underline = true,
    severity_sort = true,
})

vim.api.nvim_set_keymap('n', '<A-j>', '<cmd>lua vim.diagnostic.jump({count = 1})<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-k>', '<cmd>lua vim.diagnostic.jump({count = -1})<CR>', { noremap = true, silent = true })

-- COLORS
require("vague").setup({
    transparent = false,
    bold = true,
    italic = false,
    colors = {
        bg = "#141415",
        inactiveBg = "#1c1c24",
        fg = "#cdcdcd",
        floatBorder = "#878787",
        line = "#3e3e52",
        comment = "#606079",
        builtin = "#b4d4cf",
        func = "#c48282",
        string = "#e8b589",
        number = "#e0a363",
        property = "#c3c3d5",
        constant = "#aeaed1",
    },
})

vim.cmd("colorscheme vague")

-- AUTOPAIRS
require('nvim-autopairs').setup({
    disable_filetype = { "TelescopePrompt", "vim" },
})
