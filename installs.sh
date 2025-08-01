sudo pacman -S --needed \
  # Sway stuff
  sway \
  swayidle \
  swaylock \
  swaybg \
  swaync \
  waybar \
  wofi \

  # Terminal + TUI stuff
  foot \
  tmux \
  neovim \
  vim \
  fastfetch \
  htop \
  btop \

  # Other terminal tools
  flatpak \
  git \
  unzip \
  unrar \
  ffmpeg \
  grim \
  yt-dlp \
  python-pip \

  # Desktop applications
  firefox \
  chromium \
  discord \
  audacity \
  qbittorrent \
  vlc \
  gimp \
  loupe \
  libreoffice-fresh \
  virt-manager \
  obsidian \

  # File-manager (thunar) stuff
  thunar \
  tumbler \
  ffmpegthumbnailer \
  webp-pixbuf-loader \
  thunar-volman \
  thunar-archive-plugin \
  xarchiver \
  file-roller \
  gvfs \
  gcfs-mtp \
  gvfs-gphoto2 \

  # Wanted by neovim
  fzf \
  fd \
  ripgrep \
  luarocks \
  lazygit \
  cvs \
  lua-sec \

  # Discord screen-sharing stuff
  gnome-remote-desktop \
  xdg-desktop-portal-wlr \
  xdg-desktop-portal \

  # Other tools
  blueman \
  openssh \
  brightnessctl \
  pavucontrol \
  xorg-xwayland \

  # To make other stuff work
  cmake \
  man-db \
  wget \
  qemu-system-x86 \

  # Fonts
  noto-fonts \
  noto-fonts-cjk \
  noto-fonts-emoji \
  otf-font-awesome \

  # Styling stuff
  nwg-look \
  papirus-icon-theme \
  qt5-wayland \
  qt6-base \
  qt6-wayland \
  libadwaita

  # Network stuff
  networkmanager \
  networkmanager-openvpn \


# Install after enabeling 'multilib' in '/etc/pacman.conf'
sudo pacman -S --needed \
  steam # Steam (pacman) will ask to select Vulcan drivers, \
        # select the Intel version in both cases (for Thinkpad X1 Carbon).


# Install with flatpak after flatpak itself is installed
flatpak install \
  com.usebruno.Bruno \


# Prepare Paru by intsalling dependencies
sudo pacman -S --needed \
  rustup


# Install with Paru (AUR) after Paru is installed from the AUR
paru -S \
  gnome-themes-extra \
  adwaita-qt5-git \
  adwaita-qt6-git
