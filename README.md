# Adam Mirza's Dotfiles

## Installation

### stow
The dotfiles can be symlinked using stow from this directory.

```bash
stow . --dotfiles
```

### lunarvim
Installing lunarvim is a little bit more involved. You should be able to run the env-setup.sh script in the `scripts` direcory.
First, the correct dependency installs need to be uncommented in the `env-setup.sh` script.

### zellij
Install zellij using cargo.

```bash
cargo install --locked zellij
```

### lazygit
Install lazygit as a binary.

#### Ubuntu
```bash
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin
```

#### OpenSUSE
```bash
sudo zypper ar https://download.opensuse.org/repositories/devel:/languages:/go/openSUSE_Factory/devel:languages:go.repo
sudo zypper ref && sudo zypper in lazygit
```

