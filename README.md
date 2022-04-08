<div align="center">
	<h1>Neovim set-up</h1>
</div>

> #### __This tutorial is meant for Manjaro linux__

## 1. Make sure you have Neovim installed

> Check neovim documentation: https://neovim.io/

For arch based distros install it with:
```bash
sudo pacman -S neovim
```
#### Dont use `snapd` or neovim will most likely carry this [error](https://githubhot.com/repo/neovim/neovim/issues/17100)

## 2. Clone the repo inside the .config folder in the root directory

```bash
cd ~/.config && git clone git@github.com:ReynaldoCerpa/nvim.git
```


## 3. Install vim-plug

- Run the following command inside .config folder to download **vim-plug**
```bash 
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

- once done, restart neovim **(close and open again)** and run `:PlugInstall`
- once its done installing all the plugins, run: `:PlugUpdate`
<p align="center">  
<img src="https://raw.githubusercontent.com/junegunn/i/master/vim-plug/installer.gif" width="600" border="10"/>  
</p>



## 4. Install language servers to enable intellisense



> Configuration forked from [yorch-JMG's](https://github.com/yorch-JMG/.nvim) .nvim repo
