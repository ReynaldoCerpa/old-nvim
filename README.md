# **vimconf**
> configuration forked from [yorch-JMG's](https://github.com/yorch-JMG/.nvim) vimconf

**1. Make sure you have Neovim installed**

Check documentation: https://neovim.io/

**2. Clone the repo inside the .config folder in the root directory**
```
cd ~/.config
git clone git@github.com:ReynaldoCerpa/vimconf.git
```


**3. Install vim-plug**

run the following command inside .config
``` 
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

after that, restart neovim (close and open again) and run `:PlugInstall`

![PlugInstall](https://raw.githubusercontent.com/junegunn/i/master/vim-plug/installer.gif)

once its done installing all the plugins run: `:PlugUpdate`
