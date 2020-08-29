# Dotfiles

This repo stores my dotfiles, by storing them in version control I am able to: **backup**, **restore**, **experiment** and **sync** them across machines.

## Getting started
To be able to store the dotfiles under version control I used symlinking through an included dependency [dotbot](https://github.com/anishathalye/dotbot). The following steps are all that are required to set up a new machine.

```bash
git clone git@github.com:nbelzer/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
./install
```
