# [README WORK IN PROGRESS] My Neovim Configuration 🌿

This repository contains my personal Neovim configuration, Completely written in Lua. 

Based on `LazyVim@latest`.

# Directory structure

```
├── .gitignore
├── init.lua
├── lazy-lock.json
├── lazyvim.json
├── LICENSE
├── lua
│   ├── config # configuration for base neovim
│   │   ├── autocmds.lua
│   │   ├── keymaps.lua
│   │   ├── lazy.lua
│   │   └── options.lua
│   └── plugins # plugin-specific settings
│       ├── colorscheme.lua #colorscheme-specific settings 
│       ├── core # for LazyVim default plugins
│       │   ├── bufferline.lua
│       │   ├── dashboard.lua
│       │   ├── lualine.lua
│       │   ├── neotree.lua
│       │   ├── outline.lua
│       │   ├── telescope.lua
│       │   └── which-key.lua
│       ├── example.lua
│       ├── extra # for LazyVim extra plugins
│       │   ├── arrow.lua
│       │   ├── codecompanion.lua
│       │   ├── edgy.lua
│       │   ├── focus.lua
│       │   ├── telescope-ui-select.lua
│       │   └── yazi.lua
│       └── lang # additional language support
│           ├── kubectl.lua
│           └── yaml.lua
├── README.md
└── stylua.toml
```

# Screenshots

### `rose-pine-dawn`
![240828_01h38m01s_screenshot](https://github.com/user-attachments/assets/9d167633-4868-4a71-b70d-9f8fbef74679)

### `mellifluous`
![Screenshot From 2025-01-11 02-11-41](https://github.com/user-attachments/assets/22483897-58ad-464e-8ef1-a56ed8cdc485)



# Contributing

Feel free to open issues or submit pull requests for any improvements or bug fixes.

# License

This configuration is released under the MIT License.
