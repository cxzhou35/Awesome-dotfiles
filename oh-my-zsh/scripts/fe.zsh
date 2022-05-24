fe(){
		vim $(du -a ~/ | awk '{print $2}' | fzf)
}
