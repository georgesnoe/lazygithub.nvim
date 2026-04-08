<div align="center">

# lazygithub.nvim

## A neovim wrapper for `lazy-github` to effortlessly interact with github within neovim 🔌

</div>

<div align="center">

![Lua](https://img.shields.io/badge/Made%20with%20Lua-blueviolet.svg?style=for-the-badge&logo=lua&logoColor=white)

</div>

<div align="center">

![License](https://img.shields.io/badge/License-MIT-brightgreen?style=flat-square)
![Status](https://img.shields.io/badge/Status-Stable-informational?style=flat-square)
![Neovim](https://img.shields.io/badge/Neovim-0.11+-green.svg?style=flat-square&logo=Neovim&logoColor=white)

</div>

## Overview

`lazygithub.nvim` is a [`lazy-github` plugin](https://github.com/gizmo385/gh-lazy) for neovim that allows you to manage your github environment without leaving your neovim workspace. It draws inspiration from [`lazydocker.nvim`](https://github.com/mgierada/lazydocker.nvim). `lazy-github` is a terminal UI client for interacting with `github`.

## ✨ Features

- **Integrated GitHub TUI**: Access `lazy-github` directly within a floating terminal in Neovim.
- **Full GitHub Management**: Manage repositories, issues, pull requests, and actions.
- **Seamless Navigation**: Quick toggle with a keymap and easy exit.
- **Customizable**: Change the trigger keymap to suit your preference.

## ⚡️ Requirements

- **Neovim**: 0.11+
- **GitHub CLI**: `gh` must be installed on your system.
- **lazy-github**: Installed as a `gh` extension.
- **toggleterm.nvim**: Required as a plugin dependency.

## 💻 Installation

### 1. Install `lazy-github`

Since `lazygithub.nvim` invokes `gh lazy`, you must install `lazy-github` as a GitHub CLI extension:

```bash
gh extension install gizmo385/gh-lazy
```

### 2. Install `lazygithub.nvim`

Install the plugin using your favorite package manager.

**[Lazy.nvim](https://github.com/folke/lazy.nvim)**

```lua
return {
  "georgesnoe/lazygithub.nvim",
  dependencies = { "akinsho/toggleterm.nvim" },
  event = "VeryLazy",
  config = function()
    require("lazygithub").setup({
      keymap = "<leader>lg", -- optional: default is <leader>lg
    })
  end,
}
```

## 🔌 Available commands

- `:Lazygithub` — Open the `lazy-github` floating window.

## Default keymaps

- `<leader>lg` — Open `gh-lazy` in floating window.
- `q` — Close the floating window (while focused).

## 🧪 Compatibility

This plugin has been tested and verified on:

- **Neovim**: 0.11.0
- **lazy-github**: 0.5.4

## License

This project is licensed under the MIT License.
