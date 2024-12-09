# neovim-anywhere

A fork of [vim-anywhere](https://github.com/cknadler/vim-anywhere) modified to use Neovim instead of Vim.

Sometimes, you edit text outside of Neovim. These are sad times. Enter neovim-anywhere!

## Installation

#### Requirements

**OSX:**
* Neovim (`brew install neovim`)

**Linux:**
* Gnome (or a derivative)
* Neovim

#### Install

```bash
curl -fsSL https://raw.github.com/oscarmorrison/nvim-anywhere/master/install | bash
```

#### Update

```bash
~/.nvim-anywhere/update
```

#### Uninstall

```bash
~/.nvim-anywhere/uninstall
```

## Keybinding

__OSX:__ ( default = `ctrl+cmd+v` )

You can adjust the shortcut via [system preferences](assets/shortcut.png).

```
System Preferences > Keyboard > Shortcuts > Services > Nvim Anywhere
```

__Linux:__ ( default = `ctrl+alt+v` )

*Gnome*
```bash
$ gconftool -t str --set /desktop/gnome/keybindings/nvim-anywhere/binding <custom binding>
```

*I3WM*

```bash
$ echo 'bindsym $mod+Alt+v exec ~/.nvim-anywhere/bin/run' >> ~/.i3/config # remember to reload your config after
```
Adjust in case `$mod` is not set to ctrl.

## History

nvim-anywhere creates a temporary file in `/tmp/nvim-anywhere` when invoked. These
files stick around until you restart your system, giving you a temporary
history.

View your history:

```bash
$ ls /tmp/nvim-anywhere
```

Reopen your most recent file:

```bash
$ nvim $( ls /tmp/nvim-anywhere | sort -r | head -n 1 )
```

## Why?

I use Vim for _almost_ everything. I wish I didn't have to say _almost_. My
usual workflow is to open Vim, write, copy the text out of my current buffer
and paste it into whatever application I was just using. vim-anywhere attempts
to automate this process as much as possible, reducing the friction of using
Vim to do more than just edit code.

## Bugs

First, make sure to [read the FAQ](FAQ.md). If you don't find the answer you're
looking for there, feel free to open an issue.

## [Contributing](CONTRIBUTING.md)

Pull requests, suggestions and issues of any kind are welcome. **Make sure
to check out the [contribution guidelines](CONTRIBUTING.md) before you submit a
pull request.**

## License

MIT.

## Configuration

You can configure nvim-anywhere by editing `~/.nvim-anywhere/config`:

```bash
# Enable automatic pasting after closing nvim
AUTO_PASTE=false

# Set the nvim binary to use
NVIM_BIN="nvim"
```

Example configurations:
```bash
# Auto-paste and use Homebrew nvim
AUTO_PASTE=true
NVIM_BIN="/opt/homebrew/bin/nvim"

# Use specific nvim version
NVIM_BIN="/usr/local/bin/nvim"
```
