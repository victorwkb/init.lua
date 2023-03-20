# My Neovim Configuration

This repository is for me to track my configuration files for Neovim. Users are welcome to use and modify the configuration files as they see fit.

## Installation

To use my configuration files for Neovim, you will need to follow these steps:

1. Clone the repository to your local machine using the following command:

```
git clone https://github.com/victorwkb/init.lua.git
```

2. Install Neovim on your machine.

3. Copy the configuration files to your neovim configuration directory using the following command:

```
cp -r init.lua ~/.config/nvim/
```

## Usage

Now, simply open Neovim and start editing!

Note: Packer is a plugin manager for Neovim. After copying the configuration files to your Neovim configuration directory, remember to compile the packer file and install the plugins specified in the packer file using the following commands:

```
:so
:PackerSync
```
