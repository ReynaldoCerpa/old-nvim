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

Run the following command inside .config folder to download **vim-plug**
```bash 
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

once done, restart neovim **(close and open again)** and run `:PlugInstall` 
once its done installing all the plugins, run: `:PlugUpdate`
<p align="center">  
<img src="https://raw.githubusercontent.com/junegunn/i/master/vim-plug/installer.gif" width="600" border="10"/>  
</p>

## 4. Source `init.vim`

The <ins>**first time**</ins> you'll have to do it by hand using the following command:
`:source ~/.config/nvim/init.vim`

Every change you make to the repo will need a source to `init.vim`

<ins>**At this point key-mappings already work, so you can use the mapping for it:**</ins>

inside neovim and in `NORMAL` mode hit the following keys:
`space r s`
wich will automatically source `init.vim`


## 5. Install language servers to enable intellisense

Look for the needed language intellisense in the following repo: 
- ### [Language servers repo](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md?fbclid=IwAR3u1xDM8Gf_cTm6aaj1UqBOVgurla85xIMeilhqi_DnTnpgvFaelkyClxU)

Every lang-server installation is different, but here are the ones used in this repo
```bash
pip install pyright &&

npm install -g typescript typescript-language-server \
 bash-language-server vim-language-server vscode-langservers-extracted \ 
 @tailwindcss/language-server &&
  
sudo pacman -S gopls
```

### 5.1 Add new language server
First install it like you saw previously, and then add it to `init.vim` wich is inside ~/.config/nvim/
its should be right after the other lsp.configs already there, use the following template:
```vim
require('lspconfig').<lang-server>.setup {
	capabilities = capabilities,
}
```
Replace `<lang-server>` with the name of the language server and finally, source it

## 6.  Add syntax highlighting

To enable syntax highlighting for a specific language use `:TSInstall <language>`

- Example: `:TSInstall go`

<br />

> Configuration forked from [yorch-JMG's](https://github.com/yorch-JMG/.nvim) .nvim repo
