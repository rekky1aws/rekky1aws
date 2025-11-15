# Informations

Since this repository's `README.md` file is used to display informations about me on my GitHub profile, the informations about the rest of its content is here.

I like to think that this repo contains some of the things that make me be myself. I also tend to think that dotfiles are some of the things that makes us unique, so I decided to store them here.

## Dotfiles
 + Bash          (`.bashrc`)
 + gSnap         (`.config/gSnap`)
 + Hypr          (`.config/hypr`)
    + Hyprland   (`.config/hypr/hyprland.conf`)
    + Hyprlock   (`.config/hypr/hyprlock.conf`)
    + Hyprpaper  (`.config/hypr/hyprpaper.conf`)
    + Hyprsunset (`.config/hypr/hyprsunset.conf`)
 + Kitty         (`.config/kitty`)
 + Neovim        (`.config/nvim`)
 + Rofi          (`.config/rofi`)
 + Sublime-Text  (`.config/sublime-text`)
 + Vim           (`.vimrc`)
 + Waybar        (`.config/waybar`)
 + Zsh           (`.zshrc`)

---

I am also working on scripts to easily import files from the home directory to this repo, and the opposite.


## Complementary Informations
### Waybar
The current waybar config REQUIRES a catpuccin theme (because it's based on their config file that I tweaked a bit to fit what I wanted better).
Usually I use [mocha.css](https://github.com/catppuccin/waybar/blob/main/themes/mocha.css). It should be placed in `~/.config/waybar/` to work.

### Rofi
It's not required but I usually use themes from [newmanls' rofi themes collection](https://github.com/newmanls/rofi-themes-collection). Copy everything in `themes/` to `~/.local/share/rofi/themes/` (create the folder before doing so if it doesn't already exist). Then choose your desired theme with `rofi-theme-selector`.
