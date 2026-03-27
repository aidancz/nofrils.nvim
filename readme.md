nofrils.nvim - build your own neovim colorscheme from scratch, make every color opt-in

# preface

colorschemes these days tend to use more and more colors

it seems that many people shy away from white text on a black background

but the question is, do we actually need all these colors?

i was impressed by this video: https://www.youtube.com/watch?v=IXBC85SGC0Q

in the video, the linux kernel developer just uses the original vi, yet he appears completely at ease using it

i once got really tired of all these colors, then i discovered this minimal vim colorscheme plugin:

https://github.com/robertmeta/nofrils

i forked it and adapted it to my own preferences, which eventually became the repository you are viewing now

although the name is the same, the content is no longer related to that vim plugin

in fact, this repo contains nothing but the markdown file you are currently viewing, which will guide you in building a colorscheme from the ground up

# preparation

to experiment without touching your own config, we use a different appname (`:help $NVIM_APPNAME`)

namely, create `~/.config/nvim_nofrils` dir, then create `~/.config/nvim_nofrils/init.lua` file

populate `init.lua` with the following content:

```lua
print("nofrils")
-- print "nofrils" in the bottom-left corner
```

after that, you can launch neovim with `NVIM_APPNAME=nvim_nofrils nvim`

and restart neovim with the `:restart` command (`:help :restart`)

![](assets/20260327-133155-093597343.png)

# highlight group

neovim's colors are controlled by highlight groups, for example:

populate `init.lua` with:

```lua
vim.o.termguicolors = false
vim.api.nvim_set_hl(0, "StatusLine", {ctermbg = 1, ctermfg = 2})
```

`:restart` neovim, you should see:

![](assets/20260327-140453-844533913.png)

populate `init.lua` with:

```lua
vim.o.termguicolors = true
vim.api.nvim_set_hl(0, "StatusLine", {bg = "#ff0000", fg = "#00ff00"})
```

`:restart` neovim, you should see:

![](assets/20260327-140821-657501999.png)

as you can see

we changed the color of the statusline by modifying the `StatusLine` highlight group, setting the background to red and the foreground to green

but why do the colors look different in the two cases?

the key issue lies in the `termguicolors` option

## if you set `termguicolors` to false (the first example)

you are essentially telling neovim to use only the 16 colors provided by your terminal

> to be precise, 256 colors, but only the first 16 colors are defined by the terminal
> https://en.wikipedia.org/wiki/ANSI_escape_code#Colors

you can use `neofetch` to view the 16 colors:

![](assets/20260327-142618-370992903.png)

we set `ctermbg` to `1`, which means that we want to use terminal color 1 as the background color when `termguicolors` is false

> ctermbg: shorthand for "color terminal background"

the same applies to `ctermfg`

so `ctermbg` and `ctermfg` correspond to `termguicolors=false`

## if you set `termguicolors` to true (the second example)

you are essentially telling neovim to use any colors specified via "#rrggbb"

BUT YOU CANNOT USE THE TERMINAL 16 COLORS IN THIS SITUATION

we set `bg` to `#ff0000`, which means that we want to use the color `#ff0000` as the background color when `termguicolors` is true

the same applies to `fg`

so `bg` and `fg` correspond to `termguicolors=true`

## you can specify both `ctermbg` and `bg` at the same time:

populate `init.lua` with:

```lua
vim.api.nvim_set_hl(0, "StatusLine", {ctermbg = 1, ctermfg = 2, bg = "#ff0000", fg = "#00ff00"})
```

then the actual color depends on `termguicolors`

# the `Normal` highlight group

now, populate `init.lua` with:

```lua
vim.o.termguicolors = false
vim.api.nvim_set_hl(0, "StatusLine", {})
```

`:restart` neovim:

![](assets/20260327-152955-665007902.png)

now the statusline appears with a black background and white foreground. what happened?

in this example, we set the `statusline` highlight group to an empty table `{}`, which means it falls back to the default highlight group: `Normal`

you can view all highlight groups via `:highlight`:

![](assets/20260327-154048-778236141.png)

among all highlight groups, the most important and special one is `Normal`

the `Normal` highlight group controls how normal text looks and serves as the fallback highlight group

if you do not specify an attribute for a highlight group, or set it to "NONE", it will fall back to the corresponding attribute of the normal highlight group

this example can also be written as:

```lua
vim.o.termguicolors = false
vim.api.nvim_set_hl(0, "StatusLine", {ctermbg = "NONE", ctermfg = "NONE", bg = "NONE", fg = "NONE"})
```

## specify `Normal` highlight group

populate `init.lua` with:

```lua
vim.o.termguicolors = false
vim.api.nvim_set_hl(0, "Normal", {ctermbg = 1, ctermfg = 2})
```

alright... this looks very brutal

![](assets/20260327-155741-674503923.png)

## `Normal` highlight group and `vim.o.background`

for most people, you typically want:

```lua
vim.o.termguicolors = false
vim.api.nvim_set_hl(0, "Normal", {ctermbg = 0, ctermfg = 7})
```

usually, terminal color 0 is black, and terminal color 7 is white:

![](assets/20260327-160505-418163732.png)

if you want a light theme:

```lua
vim.o.termguicolors = false
vim.api.nvim_set_hl(0, "Normal", {ctermbg = 7, ctermfg = 0})
```

![](assets/20260327-161413-697553008.png)

vim provides the `background` option to switch between the dark and light variants of a theme

from a theme's perspective, it is simply:

```lua
if vim.o.background == "dark" then
	vim.api.nvim_set_hl(0, "Normal", {ctermbg = 0, ctermfg = 7})
else
	vim.api.nvim_set_hl(0, "Normal", {ctermbg = 7, ctermfg = 0})
end
```

> however, i do not use this mechanism myself
>
> i always set ctermbg=0 and ctermfg=7
>
> i modify terminal colors instead
>
> for a dark  theme, i set 0 to black and 7 to white
>
> for a light theme, i set 0 to white and 7 to black

# the `link` attribute

we can create our own themes now:

```lua
vim.o.termguicolors = false

vim.api.nvim_set_hl(0, "Normal", {ctermbg = 0, ctermfg = 7})
vim.api.nvim_set_hl(0, "StatusLine", {ctermbg = 4, ctermfg = 0})
vim.api.nvim_set_hl(0, "Visual", {ctermbg = 4, ctermfg = 0})
```



























https://github.com/robertmeta/nofrils


