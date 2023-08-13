# cmd setup 
Only run the `install.sh` scripts that installs the following:
```bash
chmod +x install.sh
./install.sh
```
then go to vim and run
```vim
:source %
:PluginInstall
```

 1. 🍺 [`homebrew`](https://brew.sh/): system package manager for macOS & Linux

 2. :star:[`starship`](https://starship.rs/): A costumizable, minimal & fast shell
    - ⚡️ powerline fonts: nerdy font with fancy glyphs for `starship`
 
 1. 🐚[`oh my zshel`](https://raw.github.com/ohmyzsh/ohmyzsh): A great zsh manager with lots of useful plugins
     - [power10k theme](https://github.com/romkatv/powerlevel10k.git)
     - [autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
     - [syntax highlighting](https://github.com/zsh-users/zsh-syntax-highlighting.git)
     - [fuzzyfinder]([https://](https://github.com/junegunn/fzf.git))
1. (commented now) 🐍 [miniforge installation](https://github.com/conda-forge/miniforge) TODO: change this to use mamba for mac m1
2. 🎵 [poetry](https://python-poetry.org/): better python packaging and dependency manager
3. 🧬 [`antigen`](https://github.com/zsh-users/antigen): a `zsh` plugin manager
4. ✍️ `Vundle`: a plugin manager for `vim`
5.  configurations:
    - 🖥 `zshrc`: a default configuration for `zsh`
    - ⌨️ `vimrc`: a default configuration for `vim` with [vundle](https://github.com/VundleVim/Vundle.vim.git) and ♠️ [onedark theme](https://github.com/joshdick/onedark.vim)
    - 📊 `matplotlibrc`: a default configuration for the python `matplotlib` library

# Reference
This is an experimental extention of [setup](https://github.com/perretv/setup) repo from my coleague Valentin Perret.




###
<!-- 
If you need to have libarchive first in your PATH, run:
  echo 'export PATH="/opt/homebrew/opt/libarchive/bin:$PATH"' >> ~/.zshrc

For compilers to find libarchive you may need to set:
  export LDFLAGS="-L/opt/homebrew/opt/libarchive/lib"
  export CPPFLAGS="-I/opt/homebrew/opt/libarchive/include" -->
