# dotfiles

Personal configuration files hyprland set up.

## Directory structure

```
.
├── .Xresources
├── .gtkrc-2.0
├── .zshrc
└── .config
    ├── dunst
    ├── fastfetch
    ├── gtk-3.0
    ├── gtk-4.0
    ├── hypr
    ├── kitty
    ├── matugen
    ├── ml4w
    ├── nvim
    ├── nwg-dock-hyprland
    ├── ohmyposh
    ├── qt6ct
    ├── rofi
    ├── swaync
    ├── vim
    ├── wal
    ├── waybar
    ├── waypaper
    ├── wlogout
    ├── xsettingsd
    └── zshrc
```

## Hyprland

This setup is based on ML4W. The main entry point is `~/.config/hypr/hyprland.conf`, which sources the modular config files under `~/.config/hypr/conf/`.
See the detailed Hyprland README in [.config/hypr/README.md](.config/hypr/README.md).

### 1) Install required packages

Install Hyprland and the tools referenced by the config. At minimum this config expects:

- `hyprland`
- `hypridle`, `hyprlock`, `hyprpaper`, `hyprsunset`
- `waybar`, `swaync`, `waypaper`, `nwg-dock-hyprland`
- `wl-clipboard`, `cliphist`
- `polkit-gnome`, `gnome-keyring`
- `kitty`

If any of these are not installed, remove or replace the corresponding `exec-once` lines in `~/.config/hypr/conf/autostart.conf`.

### 2) Link the configuration

Ensure `~/.config/hypr` in your home directory points to this repo’s `.config/hypr`. Use your preferred dotfiles method (symlink, stow, or manual copy).

### 3) Configure monitors and workspaces

This config delegates display layout to `nwg-displays`. It generates:

- `~/.config/hypr/monitors.conf`
- `~/.config/hypr/workspaces.conf`

These are sourced by `~/.config/hypr/conf/monitors/nwg-displays.conf`, which is in turn sourced from `~/.config/hypr/conf/monitor.conf`.

To change monitor layout:

1. Run `nwg-displays` and save your layout.
2. Verify updates in the two files above.
3. Reload Hyprland.

### 4) Customize safely

Do not edit ML4W-managed files directly. Put overrides in:

- `~/.config/hypr/conf/custom.conf`

Typical customization targets:

- Keybindings: `~/.config/hypr/conf/keybinding.conf`
- Autostart apps: `~/.config/hypr/conf/autostart.conf`
- Input settings: `~/.config/hypr/conf/keyboard.conf`
- Layout/decoration: `~/.config/hypr/conf/layout.conf`, `~/.config/hypr/conf/decoration.conf`

### 5) Lock screen and idle behavior

- Lock config: `~/.config/hypr/hyprlock.conf`
- Idle config: `~/.config/hypr/hypridle.conf`

If you change these files, restart `hypridle` or reload Hyprland.

### 6) Wallpaper

Wallpaper is controlled by `~/.config/hypr/hyprpaper.conf` and the ML4W cache. Update the wallpaper using `waypaper` or your preferred tool, then reload `hyprpaper`.
