<div align="center">
    <h1>gobbls' dots</h1>
    <img src="2026.05.15_preview.png" />
</div>

## Install

> The `install` script is currently a work in progress, and does not bootstap the complete setup. Use with caution.
> Missing setup for:
> - Neovim tree-sitter parsers (clone parsers, build and then diplay to neovim dir)

```bash
git clone https://github.com/gobbls/dotfiles.git
mv dotfiles .dotfiles
cd .dotfiles
chmod +x install
./install
```

## Directory Structure

- `configure/` configuration files that require scripts to set up.
- `dotfiles/` dotfiles that are simply symlinked in `$HOME/.config/*`.
- `other/` config files only used occasionaly or don't need to be deplayed to be used.
- `packages/` lists of packages that are installed during setup.
- `install` entrypoint for starting the setup process.

## Dependencies

#### Pacman

```
7zip
aspnet-runtime
aspnet-targeting-pack
base-devel
bash-language-server
blueman
bluez
brightnessctl
btop
code
curl
darktable
dnsmasq
dotnet-runtime
dotnet-sdk
fastfetch
fd
fdupes
ffmpeg
ffmpegthumbnailer
filezilla
firefox
foot
fwupd
fzf
gimp
git
gnome-themes-extra
grim
gvfs-mtp
gvfs-smb
keyd
lazygit
libreoffice-fresh
libreoffice-fresh-nb
libvirt
loupe
lua-language-server
lua51
luarocks
mpv
neovim
networkmanager
networkmanager-openvpn
nm-connection-editor
nodejs
noto-fonts
noto-fonts-cjk
noto-fonts-emoji
noto-fonts-extra
npm
nwg-look
obs-studio
openssh
otf-font-awesome
papirus-icon-theme
pavucontrol
pyright
python
python-mutagen
python-pip
qbittorrent
qemu-full
qt6-wayland
ruff
rustup
slurp
stylua
svelte-language-server
sway
swaybg
swayidle
swaylock
swaync
thunar
thunar-archive-plugin
thunar-volman
tmux
ttf-firacode-nerd
ttf-hack-nerd
ttf-jetbrains-mono-nerd
ttf-noto-nerd
ttf-sourcecodepro-nerd
tumbler
typescript-language-server
unzip
vim
virt-manager
vscode-css-languageserver
vscode-html-languageserver
vscode-json-languageserver
waybar
wget
wireplumber
wl-clipboard
wofi
xarchiver
xdg-desktop-portal-wlr
xorg-xwayland
yazi
yt-dlp
zsh
zsh-autosuggestions
zsh-syntax-highlighting
zsh-completions
```

#### Rustup

> Installed with `install`.

`Paru` depends on Rust. We install it with `rustup`:

```bash
rustup default stable
```

#### Paru (AUR)

```
bruno-bin
localsend-bin
oh-my-posh-bin
roslyn-language-server
```

## Services

```
NetworkManager
bluetooth
keyd
libvirtd
```

## Notes

#### Neovim

- Tree-sitter grammars (`nvim/parser-repos/*`) are downloaded and compiled individually, and output to `nvim/parser/`.
- The Tree-sitter queries are downloaded in bulk from the [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter/tree/main/runtime/queries) repo, which was archived some time ago.

#### Code (code-oss)

- The VSCode (code-oss) config is composed of the pieces from my personal "profile", and needs the `extensions.txt` downloaded manually:
    ```bash
    cat ./configure/code-oss/extensions.txt | xargs -L 1 code-oss --install-extension
    ```

#### Wallpapers

- All images in `wallpapers/` are cropped to aspect ratio **16:10**.
