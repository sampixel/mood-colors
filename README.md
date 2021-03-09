# Mood Colors

This is a series of colorschemes for vim/neovim text editor.

All of those colorschemes support [lightline.vim](https://github.com/itchyny/lightline.vim) and [airline.vim](https://github.com/vim-airline/vim-airline)

If you want to see my personal configuration of neovim visit my [github-repo](https://github.com/sampixel/nvim)

# Prefaction


## Palette

### Darkenvim

![color-palette](/images/darkenvim-palette.png)

### Wintenvim

![color-palette](/images/wintenvim-palette.png)

### Colorfull

![color-palette](/images/colorfull-palette.png)

### Luascheme

![color-palette](/images/luascheme-palette.png)

### Violetelo

![color-palette](/images/violetelo-palette.png)


## Statusline

### Darkenvim

![statusline](/images/darkenvim-statusline.png)

### Wintenvim

![statusline](/images/wintenvim-statusline.png)

### Colorfull

![statusline](/images/colorfull-statusline.png)

### Luascheme

![statusline](/images/luascheme-statusline.png)

### Violetelo

![statuslin](/images/violetelo-statusline.png)


## Colorscheme

### Darkenvim

![colorscheme](/images/darkenvim-colorscheme.png)

### Wintenvim

![colorscheme](/images/wintenvim-colorscheme.png)

### Colorfull

![colorscheme](/images/colorfull-colorscheme.png)

### Luascheme

![colorscheme](/images/luascheme-colorscheme.png)

### Violetelo

![colorscheme](/images/violetelo-colorscheme.png)


# Installation

Plug this theme with your package manager inside your `plugins.vim`.

[Vundle](https://github.com/VundleVim/Vundle.vim)

    Plugin `sampixel/mood-colors`

Install with `:PluginInstall`

[vim-plug](https://github.com/junegunn/vim-plug)

    Plug 'sampixel/mood-colors'

Install with `:PlugInstall`

[NeoBundle](https://github.com/Shougo/neobundle.vim)

    NeoBundle `sampixel/mood-colors`

Install with `:NeoBundleInstall`

Or you can even clone this repo inside your `~/.config/nvim/autoload/plugged` folder

    git clone https://github.com/sampixel/mood-colors

Refresh your vim environment with `:source $MYVIMRC`


## Configuration

To be able to see the changes in your vim environment you need to implement the following lines inside your `.vimrc` or `init.vim`
```vim
" enable syntax
syntax enable

" enable termguicolors
if (has("termguicolors"))
    set termguicolors
endif
```

## Lightline and Airline

If you want to implement color support for tablines and statusline colors, add the following line to your `.vimrc` or `init.vim`
```vim
" list of available colorschemes
"   darkenvim
"   wintenvim
"   colorfull
"   luascheme
"   violetelo

" set airline theme
let g:airline_theme = "violetelo"

" set lightline theme
let g:lightline = {"colorscheme": "violetelo"}

" set colorscheme name
colorscheme violetelo
```
