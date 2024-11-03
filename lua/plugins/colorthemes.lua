return {
    {
        'navarasu/onedark.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            require('onedark').setup {
                -- Main options --
                style = 'darker', -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
                transparent = false, -- Show/hide background
                term_colors = true, -- Change terminal color as per the selected theme style
                ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
                cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu

                -- toggle theme style ---
                toggle_style_key = '<leader>ts', -- Leave it nil to disable it, or set it to a string, for example "<leader>ts"
                toggle_style_list = { 'darker', 'cool', 'warmer' },

                -- Change code style ---
                -- Options are italic, bold, underline, none
                -- You can configure multiple style with comma separated, For e.g., keywords = 'italic,bold'
                code_style = {
                    comments = 'italic',
                    keywords = 'none',
                    functions = 'none',
                    strings = 'none',
                    variables = 'none',
                },

                -- Lualine options --
                lualine = {
                    transparent = false, -- lualine center bar transparency
                },

                -- Custom Highlights --
                colors = {}, -- Override default colors
                highlights = {}, -- Override highlight groups

                -- Plugins Config --
                diagnostics = {
                    darker = true, -- darker colors for diagnostic
                    undercurl = true, -- use undercurl instead of underline for diagnostics
                    background = true, -- use background color for virtual text
                },
            }
            require('onedark').load()
        end,
    },
}
