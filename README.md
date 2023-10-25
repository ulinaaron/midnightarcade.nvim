
# Midnight Arcade

A Neovim colorscheme plugin.

## Installation

Use your favourite package manager to install:

### [packer.nvim](https://github.com/wbthomason/packer.nvim)

packer.nvim example:

```lua
use {
  'ulinaaron/midnightarcade.nvim',
  config = function()
    require('midnightarcade').setup({
        options = {
            transparent = false
        }
    })
  end
}
```
