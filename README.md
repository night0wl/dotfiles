## Install

```sh
git clone git@github.com:night0wl/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
git submodule init
git submodule update
script/bootstrap
```

This will symlink the appropriate files in `.dotfiles` to your home directory.
Everything is configured and tweaked within `~/.dotfiles`, though.

To make the tagbar vim plugin  work you will also need:
Exuberant Ctags >= 5.5.

On Mac OS X:
```
brew install ctags
```
On Debian Linux:
```
apt-get install exuberant-ctags
```

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
