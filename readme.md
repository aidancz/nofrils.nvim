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

restart neovim with `:restart` (`:help :restart`)

![](assets/20260327-133155-093597343.png)












https://github.com/robertmeta/nofrils
