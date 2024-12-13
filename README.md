# cmd setup 
Only run the `install.sh` scripts that installs the following:
```bash
chmod +x install.sh
./install.sh
```
if install.sh script is executed, you can check enabled plugins in you ~/.zsshrc file: I have enabled:
```
plugins=(git zsh-autosuggestions zsh-syntax-highlighting vscode web-search copypath copypath)
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
     - [fuzzyfinder](https://github.com/junegunn/fzf.git)
1. (commented now) 🐍 [miniforge installation](https://github.com/conda-forge/miniforge) TODO: change this to use mamba for mac m1
  - conda create --name myenv python=3.12 --yes
  - conda activate myenv
2. conda install -c apple tensorflow-deps --yes
3. pip install -r requirements.txt --no-cache-dir
4. 🎵 [poetry](https://python-poetry.org/): better python packaging and dependency manager
5. 🧬 [`antigen`](https://github.com/zsh-users/antigen): a `zsh` plugin manager
6. ✍️ `Vundle`: a plugin manager for `vim`
7.  configurations:
    - 🖥 `zshrc`: a default configuration for `zsh`
    - ⌨️ `vimrc`: a default configuration for `vim` with [vundle](https://github.com/VundleVim/Vundle.vim.git) and ♠️ [onedark theme](https://github.com/joshdick/onedark.vim)
    - 📊 `matplotlibrc`: a default configuration for the python `matplotlib` library

8.  install itsycal
9.  iterm
    1.  set profile->keys->key mapping; go to presets and choose normal key bindings for navigating b/f like a normal person :D 
10. I prefer spectacle
11. install obsidian for papers

# Reference
This is an experimental extention of [setup](https://github.com/perretv/setup) repo from my coleague Valentin Perret.




###
<!-- 
If you need to have libarchive first in your PATH, run:
  echo 'export PATH="/opt/homebrew/opt/libarchive/bin:$PATH"' >> ~/.zshrc

For compilers to find libarchive you may need to set:
  export LDFLAGS="-L/opt/homebrew/opt/libarchive/lib"
  export CPPFLAGS="-I/opt/homebrew/opt/libarchive/include" -->
