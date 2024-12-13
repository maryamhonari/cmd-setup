# OS specific commands
if [[ "$OSTYPE" == "linux-gnu" ]]; then
    export OSNAME="Linux"
    sudo apt install zsh
    mkdir -p ~/.config/matplotlibrc
    cp matplotlibrc ~/.config/matplotlibrc/
elif [[ "$OSTYPE" == "darwin"* ]]; then
    export OSNAME="MacOSX"
    xcode-select --install
    mkdir ~/.matplotlib
    cp matplotlibrc ~/.matplotlib
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo >> /Users/maryamh/.zprofile
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/maryamh/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
    source zsh
    brew install curl git htop wget hstr tmux MonitorControl jq
fi

echo "OS name: ${OSNAME}"
echo "CPU architecture: $CPUTYPE"

# Install starship shell
curl -sS https://starship.rs/install.sh | sh

# Install oh-my-zsh & plugins
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
sed -i '' 's/^ZSH_THEME="[^"]*"/ZSH_THEME="powerlevel10k\/powerlevel10k"/' ~/.zshrc
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# Install miniforge


# test -e $HOME/miniforge3 || {
#     curl -L -O "https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-$(uname)-$(uname -m).sh"
#     bash Miniforge3-$(uname)-$(uname -m).sh
#     # export MINIFORGE_NAME="Miniforge3-${OSNAME}-${CPUTYPE}.sh";
#     # wget "https://github.com/conda-forge/miniforge/releases/latest/download/${MINIFORGE_NAME}";
#     # sh $MINIFORGE_NAME -b; rm $MINIFORGE_NAME;
# }
# export PATH=$HOME/miniforge3/bin:$PATH


# Copy config files if non-existent
test -e ~/.vimrc || cp vimrc ~/.vimrc
test -e ~/.zshrc || cp zshrc ~/.zshrc
test -e ~/.condarc || cp condarc ~/.condarc

# Install Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Install powerline fonts
git clone https://github.com/powerline/fonts.git --depth=1
./fonts/install.sh
rm -rf fonts

# Install vim onedark theme
cp -r onedark.vim/colors ~/.vim/
cp -r onedark.vim/autoload ~/.vim/
vim +PluginInstall +qall

# Add zsh to shells
command -v zsh | sudo tee -a /etc/shells

# setup python
python3 -m pip install --upgrade setuptools
python3 -m pip install --upgrade pip


# Install poetry
curl -sSL https://install.python-poetry.org | python3 - -p

# Initialize conda
conda init zsh
