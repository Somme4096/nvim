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

### `mellifluous`
![Screenshot From 2025-01-12 19-40-11](https://github.com/user-attachments/assets/b63920f2-91c0-4781-82ce-4f6677a2496a)

### telescope

![Screenshot From 2025-01-12 19-38-40](https://github.com/user-attachments/assets/abd29648-36e7-4736-82fe-cb0a5cb197b0)


# Contributing

Feel free to open issues or submit pull requests for any improvements or bug fixes.
