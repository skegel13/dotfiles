--------------------------------------------------------------------------------
-- Telescope Config
--------------------------------------------------------------------------------

local telescope = require('telescope')
local actions = require('telescope.actions')
local builtin = require('telescope.builtin')

telescope.setup {
  defaults = {
    prompt_prefix = '  ',
    sorting_strategy = "ascending",
    layout_strategy = "flex",
    layout_config = {
      prompt_position = "top",
      width = .8,
      height = .9,
    },
    mappings = {
      i = {
        ["<esc>"] = actions.close,
      },
    },
    file_ignore_patterns = { 'node_modules' },
  },

  pickers = {
    find_files = {
      prompt_title = 'All Files',
      find_command = {'rg', '--files', '--no-ignore', '--hidden'},
    },

    git_files = {
      prompt_title = 'Project Files',
      find_command = {'rg', '--files'},
    },

    current_buffer_fuzzy_find = {
      prompt_title = 'Current Buffer Lines',
      sorting_strategy = 'descending'
    },

    buffers = {
      sort_lastused = true,
      mappings = {
        i = {
          ["<c-d>"] = "delete_buffer",
        }
      }
    },

    oldfiles = {
      prompt_title = 'History',
    },
  },
}

--
-- Custom finders
--
builtin.dotfiles = function ()
  builtin.find_files(require('telescope.themes').get_dropdown{
    cwd = "$HOME/dotfiles",
    prompt_title = 'Dotfiles',
  })
end

telescope.load_extension('fzf')
telescope.load_extension('sourcery')
telescope.load_extension('coc')
