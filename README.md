## Install

```sh
git clone git@github.com:night0wl/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
git submodule add -f git://github.com/rodjek/vim-puppet.git ./vim/vim.symlink/bundle/vim-puppet
git submodule add -f git://github.com/godlygeek/tabular.git ./vim/vim.symlink/bundle/tabular
git submodule add -f git://github.com/scrooloose/syntastic.git ./vim/vim.symlink/bundle/syntastic
git submodule add -f git://github.com/hdima/python-syntax.git ./vim/vim.symlink/bundle/python-syntax
script/bootstrap
```

This will symlink the appropriate files in `.dotfiles` to your home directory.
Everything is configured and tweaked within `~/.dotfiles`, though.

## Structure

Everything's built around topic areas. If you're adding a new area to your
forked dotfiles — say, "Java" — you can simply add a `java` directory and put
files in there.
Anything with an extension of `.symlink` will get symlinked without
extension into `$HOME` when you run `rake install`.

## Components

There's a few special files in the hierarchy.

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made
  available everywhere.
- **topic/\*.symlink**: Any files ending in `*.symlink` get symlinked into
  your `$HOME`. This is so you can keep all of those versioned in your dotfiles
  but still keep those autoloaded files in your home directory. These get
  symlinked in when you run `rake install`.
