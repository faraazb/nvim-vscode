# nvim-vscode

## Introduction

This is my Neovim configuration for use with [vscode-neovim](https://github.com/vscode-neovim/vscode-neovim/) VSCode extension. It is based on [kickstart-modular.nvim](https://github.com/dam9000/kickstart-modular.nvim).

It mainly maps some [keybindings to VSCode actions](./lua/vscode-keymaps.lua). It  configures some plugins such as [mini.nvim](https://github.com/nvim-mini/mini.nvim) - (ai, surround), [flash.nvim](https://github.com/folke/flash.nvim) and [vscode-multi-cursor.nvim](https://github.com/vscode-neovim/vscode-multi-cursor.nvim). It disables LSP, treesitter and other UI related plugins which are not relevant for VSCode.
