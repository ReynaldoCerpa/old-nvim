	 inoremap kj <Esc>
   nnoremap H gT
   nnoremap L gt
    nmap <leader>rs :source ~/.config/nvim/init.vim<CR>
   "Hides and shows NERDTree"
    map <C-n> :NERDTreeToggle<CR>
    "Files in directory"
    nmap <leader>f :Telescope find_files<CR>
    "Search in lines of buffer"
    nmap <leader>l :BLines<CR>
    nmap <leader>fl :Rg!<CR>
    "Commits on branch"
    nmap <leader>c :BCommits<CR>
    "Git files status"
    nmap <leader>gfs :GFiles?<CR>
    "Files in repo"
    nmap <leader>gf :GFiles<CR>
    "Emergency Exit"
    nmap <leader>ef :q!<CR>
    "Exit and Save"
    nmap <leader>es :wq<CR>
    "Save"
    nmap <leader>s :w<CR>
    "Close window if possible"
    nmap <leader>qw :q<CR>
    "Opens empty tab"
    nmap <leader>tt :tabnew<CR>
    "Update PlugIns"
    nmap <leader>upi :PlugInstall<CR> 
    "Git Status to see staged or modified files"
    nmap <leader>gs :G<CR>
    "Git commit staged changes"
    nmap <leader>gc :Git commit<CR>
    "Git push commits to repo"
    nmap <leader>gph :Git push<CR>
    "Git pull changes to local repo"
    nmap <leader>gpl :Git pull<CR>
    "Substitut"
    nmap <leader>S :%s//g<left><left>
    nmap <leader>ccs :colorscheme<space>

   "Flutter run"
    nnoremap <leader>fa :FlutterRun<cr>
    nnoremap <leader>fq :FlutterQuit<cr>
    nnoremap <leader>fr :FlutterHotReload<cr>
    nnoremap <leader>fR :FlutterHotRestart<cr>
    nnoremap <leader>fD :FlutterVisualDebug<cr>
