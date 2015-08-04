# rachit does dotfiles
// note: below is a copy of zholman's dotfiles README. I've made some modifications
but I'm still too lazy to change the README too much. Use at your own risk
## dotfiles
Dotfiles are a way of organizing your setup and making it consistent. Just as people
refactor their codebases to be modular and DRY, [Zach Holman](https://github.com/holman)
modified his dotfiles so they were modular. I forked and made this own version for myself.

If you want to read about dotfiles, Zach has some [thoughts](http://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/).

## install

Run this:

```sh
git clone --recursive https://github.com/rachtsingh/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
```

This will symlink the appropriate files in `.dotfiles` to your home directory.
Everything is configured and tweaked within `~/.dotfiles`. Install is `--recursive`
because I've set up a number of git submodules for vim (in `vim/bundle`).

If you're coming from a pure Mac setup, you'll want to set your default shell to be
zsh, so use `chsh -s /bin/zsh`. Then, start up zsh from your current bash shell 
via `zsh`. Now you should be good to go!

The main file you'll want to change right off the bat is `zsh/zshrc.symlink`,
which sets up a few paths that'll be different on your particular machine.

`dot` is a simple script that installs some dependencies, sets sane OS X
defaults, and so on. Tweak this script, and occasionally run `dot` from
time to time to keep your environment fresh and up-to-date. You can find
this script in `bin/`.

## topical (from @holman)

Everything's built around topic areas. If you're adding a new area to your
forked dotfiles — say, "Java" — you can simply add a `java` directory and put
files in there. Anything with an extension of `.zsh` will get automatically
included into your shell. Anything with an extension of `.symlink` will get
symlinked without extension into `$HOME` when you run `script/bootstrap`.

## what's inside

A lot of stuff. Seriously, a lot of stuff. Check them out in the file browser
above and see what components may mesh up with you.
[Fork it](https://github.com/holman/dotfiles/fork), remove what you don't
use, and build on what you do use.

## components (from @holman)

There's a few special files in the hierarchy.

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made
  available everywhere.
- **topic/\*.zsh**: Any files ending in `.zsh` get loaded into your
  environment.
- **topic/path.zsh**: Any file named `path.zsh` is loaded first and is
  expected to setup `$PATH` or similar.
- **topic/completion.zsh**: Any file named `completion.zsh` is loaded
  last and is expected to setup autocomplete.
- **topic/\*.symlink**: Any files ending in `*.symlink` get symlinked into
  your `$HOME`. This is so you can keep all of those versioned in your dotfiles
  but still keep those autoloaded files in your home directory. These get
  symlinked in when you run `script/bootstrap`.

## bugs (from @holman)

I want this to work for everyone; that means when you clone it down it should
work for you even though you may not have `rbenv` installed, for example. That
said, I do use this as *my* dotfiles, so there's a good chance I may break
something if I forget to make a check for a dependency.

If you're brand-new to the project and run into any blockers, please
[open an issue](https://github.com/rachtsingh/dotfiles/issues) on this repository
and I'd love to get it fixed for you!

## thanks

Obviously this repo (and much of the readme) is forked from [Zach Holman](http://github.com/holman)
who has excellent [dotfiles](http://github.com/holman/dotfiles). Many thanks to him.
I haven't customized much yet.
