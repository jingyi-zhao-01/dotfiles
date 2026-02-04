 # Hyprland configuration

 This directory contains the Hyprland configuration used by this dotfiles repo. The setup is based on ML4W with modular config files and safe overrides.

 ## Entry points

 - Main config: `~/.config/hypr/hyprland.conf`
 - Modular configs: `~/.config/hypr/conf/*.conf`
 - User overrides: `~/.config/hypr/conf/custom.conf`

 ## Directory layout

 - `conf/` — Modular configs sourced by `hyprland.conf`
 - `conf/custom.conf` — Put personal overrides here
 - `conf/autostart.conf` — Autostart apps
 - `conf/keybinding.conf` — Keybindings
 - `conf/keyboard.conf` — Input settings
 - `conf/layout.conf` / `conf/decoration.conf` — Layout and decoration
 - `hypridle.conf` — Idle behavior
 - `hyprlock.conf` — Lock screen
 - `hyprpaper.conf` — Wallpaper

 ## Monitor and workspace management

 This config delegates display layout to `nwg-displays`. It generates:

 - `~/.config/hypr/monitors.conf`
 - `~/.config/hypr/workspaces.conf`

 These are sourced by `conf/monitors/nwg-displays.conf`, which is included from `conf/monitor.conf`.

 To update layout:

 1. Run `nwg-displays` and save the layout.
 2. Verify changes in the two files above.
 3. Reload Hyprland.

 ## Required packages

 At minimum this config expects the following tools to be installed:

 - `hyprland`
 - `hypridle`, `hyprlock`, `hyprpaper`, `hyprsunset`
 - `waybar`, `swaync`, `waypaper`, `nwg-dock-hyprland`
 - `wl-clipboard`, `cliphist`
 - `polkit-gnome`, `gnome-keyring`
 - `kitty`

 If a tool is missing, remove or replace the related `exec-once` entries in `conf/autostart.conf`.

 ## Customization tips

 - Avoid editing ML4W-managed files directly.
 - Use `conf/custom.conf` for overrides.
 - Reload Hyprland after changes.

 ## Related docs

 - Repository overview: [README.md](../../README.md)
