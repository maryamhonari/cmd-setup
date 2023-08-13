#setup 
Only run the `install.sh` scripts that installs: the following

## 1. install ohmyzsh


## 2. install power10k theme

```bash
mkdir ~/backstage & cd backstage

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```
now `zsh` and it prompts you to choose the theme as you like it.

## 3. install zsh-autosuggestions

```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```
## 4. install zsh-syntax-highlighting

```bash
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

```


### References
* Many other plugins in this repository [here](https://github.com/zsh-users)



###
<!-- 
If you need to have libarchive first in your PATH, run:
  echo 'export PATH="/opt/homebrew/opt/libarchive/bin:$PATH"' >> ~/.zshrc

For compilers to find libarchive you may need to set:
  export LDFLAGS="-L/opt/homebrew/opt/libarchive/lib"
  export CPPFLAGS="-I/opt/homebrew/opt/libarchive/include" -->
