-- VSCode bindings
-- VS Code API commands for Neovim
-- Add this to your init.lua or a separate file in your Neovim config

if not vim.g.vscode then
  return
end

local vscode = require 'vscode'

-- Navigation commands
vim.keymap.set('n', 'gd', function()
  vscode.call 'editor.action.revealDefinition'
end, { desc = 'Go to definition' })
vim.keymap.set('n', 'gD', function()
  vscode.call 'editor.action.revealDeclaration'
end, { desc = 'Go to declaration' })
vim.keymap.set('n', 'gy', function()
  vscode.call 'editor.action.goToTypeDefinition'
end, { desc = 'Go to type definition' })
vim.keymap.set('n', 'gI', function()
  vscode.call 'editor.action.goToImplementation'
end, { desc = 'Go to implementation' })
vim.keymap.set('n', 'gA', function()
  vscode.call 'editor.action.goToReferences'
end, { desc = 'Go to references' })

-- Symbol search
vim.keymap.set('n', 'gs', function()
  vscode.call 'workbench.action.gotoSymbol'
end, { desc = 'Find symbol in current file' })
vim.keymap.set('n', 'gS', function()
  vscode.call 'workbench.action.showAllSymbols'
end, { desc = 'Find symbol in project' })

-- Diagnostics navigation
vim.keymap.set('n', 'g]', function()
  vscode.call 'editor.action.marker.next'
end, { desc = 'Go to next diagnostic' })
vim.keymap.set('n', ']d', function()
  vscode.call 'editor.action.marker.next'
end, { desc = 'Go to next diagnostic' })
vim.keymap.set('n', 'g[', function()
  vscode.call 'editor.action.marker.prev'
end, { desc = 'Go to previous diagnostic' })
vim.keymap.set('n', '[d', function()
  vscode.call 'editor.action.marker.prev'
end, { desc = 'Go to previous diagnostic' })

-- Code actions and info
vim.keymap.set('n', 'gh', function()
  vscode.call 'editor.action.showHover'
end, { desc = 'Show hover info' })
vim.keymap.set('n', 'g.', function()
  vscode.call 'editor.action.quickFix'
end, { desc = 'Open code actions menu' })

-- Rename
vim.keymap.set('n', 'cd', function()
  vscode.call 'editor.action.rename'
end, { desc = 'Rename symbol' })

-- Maximize split
vim.keymap.set('n', '<C-w>z', function()
  vscode.call 'workbench.action.toggleMaximizeEditorGroup'
end, { desc = 'Toggle maximize split' })

-- Additional useful VS Code commands
vim.keymap.set('n', '<leader>ff', function()
  vscode.call 'workbench.action.quickOpen'
end, { desc = 'Quick open files' })
vim.keymap.set('n', 'g/', function()
  vscode.call 'workbench.action.findInFiles'
end, { desc = 'Find in files' })
vim.keymap.set('n', '<leader>fc', function()
  vscode.call 'workbench.action.showCommands'
end, { desc = 'Show commands' }) -- TODO: This is not working

-- Format document
vim.keymap.set('n', '<leader>f', function()
  vscode.call 'editor.action.formatDocument'
end, { desc = 'Format document' })
vim.keymap.set('v', '<leader>f', function()
  vscode.call 'editor.action.formatSelection'
end, { desc = 'Format selection' })

-- Comments
vim.keymap.set('n', 'gcc', function()
  vscode.call 'editor.action.commentLine'
end, { desc = 'Toggle line comment' })
vim.keymap.set('v', 'gc', function()
  vscode.call 'editor.action.commentLine'
  -- vim.cmd('normal! `[V`]')
  -- vim.cmd('normal! `[V`]')
  vim.cmd 'normal! \027'
end, { desc = 'Toggle line comment' })

-- File explorer
-- vim.keymap.set('n', '<leader>e', function() vscode.call('workbench.action.toggleSidebarVisibility') end, { desc = 'Toggle sidebar' })

-- Terminal
-- vim.keymap.set('n', '<leader>t', function() vscode.call('workbench.action.terminal.toggleTerminal') end, { desc = 'Toggle terminal' })

-- Problems/Errors panel
vim.keymap.set('n', '<leader>p', function()
  vscode.call 'workbench.actions.view.problems'
end, { desc = 'Show problems' })

-- Git commands
vim.keymap.set('n', ']c', function()
  vscode.call 'workbench.action.editor.nextChange'
end, { desc = 'Go to next git change' })
vim.keymap.set('n', '[c', function()
  vscode.call 'workbench.action.editor.previousChange'
end, { desc = 'Go to previous git change' })
vim.keymap.set('n', 'do', function()
  vscode.call 'git.openChange'
end, { desc = 'Expand diff hunk' })
vim.keymap.set('n', 'dO', function()
  vscode.call 'git.stageSelectedRanges'
end, { desc = 'Toggle staged' })
vim.keymap.set('n', 'du', function()
  vscode.call 'git.stageSelectedRanges'
end, { desc = 'Stage and next (in diff view)' })
vim.keymap.set('n', 'dU', function()
  vscode.call 'git.unstageSelectedRanges'
end, { desc = 'Unstage and next (in diff view)' })
vim.keymap.set('n', 'dp', function()
  vscode.call 'git.revertSelectedRanges'
end, { desc = 'Restore change' })

-- Additional Git commands
vim.keymap.set('n', '<leader>gg', function()
  vscode.call 'workbench.view.scm'
end, { desc = 'Open source control' })
vim.keymap.set('n', '<leader>gd', function()
  vscode.call 'git.openChange'
end, { desc = 'Open git diff' })
vim.keymap.set('n', '<leader>gs', function()
  vscode.call 'git.stage'
end, { desc = 'Stage current file' })
vim.keymap.set('n', '<leader>gu', function()
  vscode.call 'git.unstage'
end, { desc = 'Unstage current file' })
vim.keymap.set('n', '<leader>gc', function()
  vscode.call 'git.commit'
end, { desc = 'Git commit' })

-- Example of using range-based commands (for visual selections)
vim.keymap.set('v', '<leader>ca', function()
  vscode.call('editor.action.quickFix', { range = vim.fn.getpos "'<" })
end, { desc = 'Code actions on selection' })

-- vim: ts=2 sts=2 sw=2 et
