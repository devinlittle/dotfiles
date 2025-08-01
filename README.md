bruh il talk more later

Hyprland setup:
hyprland
hypridle
hyprlock
linux-wallpaperengine
hypridle
activity watch
dunst
polkit-kde-agent
NEED SOME SORT OF PINENTRY
rofi-wayland
gnupg
neovim
wezterm
bash
flameshot
pavucontrol


#Setup 
* u need git and yay installed
```bash
cd ~ # make sure in home dir
git clone https://github.com/devinlittle/dotfiles.git && cd dotfiles
sudo pacman -S git stow hyprland waybar hypridle hyprlock hyprpaper wezterm neovim bash eza rofi-wayland dunst flameshot pavucontrol pamixer playerctl feh dolphin firefox gnupg polkit-kde-agent mpd lazygit stylua shellcheck shfmt flake8 ttf-fira-code noto-fonts rustup
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash 
yay -S --noconfirm linux-wallpaperengine aw-qt brillo youtube-music-git
stow --target=$HOME . # create symlinks for config files and DONE!!
echo "make sure to install rustup and nodejs + corepack"
```

To add: PAM config, gnupg config, speaking of...
```
-----BEGIN PGP PUBLIC KEY BLOCK-----

mDMEaH0vTBYJKwYBBAHaRw8BAQdAB31Vi9bztUv2tCkkEf6cRMUdgoW3+2Ryw7jw
3q9qw1K0RERldmluIExpdHRsZSAodGhpcyBpcyBNWSBrZXkgYW5kIE5PVCB5b3Vy
cykgPGRldmlubGl0dGxlZUBnbWFpbC5jb20+iJMEExYKADsCGyMFCwkIBwIGFQoJ
CAsCBBYCAwECHgECF4AWIQT2Swup452+1SEZJCTblP5LxMyYUgUCaH01UgIZAQAK
CRDblP5LxMyYUtQ9AP9pi+MguyWT3hPmdycP+VqlNlixvPsF8nfue1F42gjE2wEA
/RN53CSKIgVHOeAAvmHNIRzJbn8fzLv3G1I+h4tQAQO0NURldmluIExpdHRsZSAo
YXJjaGxpbm55IGtleSkgPGRldmlubGl0dGxlZUBnbWFpbC5jb20+iHgEMBYKACAW
IQT2Swup452+1SEZJCTblP5LxMyYUgUCaH01gAIdAAAKCRDblP5LxMyYUsa8AQDU
POmXI81i2gK9yT1G3gWtlYVN2OfxM+zvhLW3p5+UUQEA21e93nPfXSTRwpKnZrZS
RoNC1frXTKx3FANddhxbQw2IkAQTFgoAOBYhBPZLC6njnb7VIRkkJNuU/kvEzJhS
BQJofS9MAhsjBQsJCAcCBhUKCQgLAgQWAgMBAh4BAheAAAoJENuU/kvEzJhSMHoA
/3M/ZRWdXA/5EbsS2Ja+F5D/iu+36vVnoPYcx0r6YogrAPoCGlbEKvZZbxC0kmKL
+l4dbA+R/Qa26kh04THyD58tBrg4BGh9L5ESCisGAQQBl1UBBQEBB0DMJwpqwY/Z
Ut4XxP64eClM+TcnXXzBG+tBNd0YHmjRVAMBCAeIeAQYFgoAIBYhBPZLC6njnb7V
IRkkJNuU/kvEzJhSBQJofS+RAhsMAAoJENuU/kvEzJhSA7sA/AhEkW9DSz/MW6mF
cthXqA/NpiMlw40tmg6V4fIK9h59AQC2F4gRysTw4HOuUT+2otZgDOvT3W5LIC/9
sYJ4h5E4AQ==
=kwRL
-----END PGP PUBLIC KEY BLOCK-----
```
