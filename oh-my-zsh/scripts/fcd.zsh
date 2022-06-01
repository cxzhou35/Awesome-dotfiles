fcd(){
		cd $(du -a ./ | awk '{print $2}' | fzf)
}
