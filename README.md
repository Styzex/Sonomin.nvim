<a href="https://dotfyle.com/plugins/Styzex/Sonomin.nvim">
	<img src="https://dotfyle.com/plugins/Styzex/Sonomin.nvim/shield?style=flat" />
</a>

# 🎨 Sonomin

Sonomin is a dark colorscheme for Neovim, its a mix between [Sonokai](https://github.com/sainnhe/sonokai) and [Min](https://github.com/miguelsolorio/min-theme)

## 🌟 Features

- Dark theme optimized for readability
- Carefully selected colors for syntax highlighting
- Customized UI elements for a cohesive look

## 📦 Installation

### 📦 [packer.nvim](https://github.com/wbthomason/packer.nvim):

```lua
use {
    'Styzex/Sonomin.nvim',
    config = function()
        require('sonomin').setup()
    end
}
```

### 📦 [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
require('lazy').setup({
    {
        'Styzex/Sonomin.nvim',
        lazy = false,
        priority = 1000
    }
})
```

### 📦 [vim-plug](https://github.com/junegunn/vim-plug):

```vim
Plug 'Styzex/Sonomin.nvim'
```

Thank you for using Sonomin!
