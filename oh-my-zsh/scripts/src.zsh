# clean homebrew cache files
function cleanbrew () {
  folder_paths=(~/Library/Caches/Homebrew/downloads ~/Library/Caches/Homebrew/Cask)

  for folder_path in "${folder_paths[@]}"; do
    if [ -d "$folder_path" ] && [ "$(ls $folder_path)" ]; then
      rm -rf $folder_path/*
      echo "The folder $folder_path has been emptied."
    else
      echo "The folder $folder_path is already empty."
    fi
  done
}

# cd folder with fzf
function fcd(){
		cd $(du -a ./ | awk '{print $2}' | fzf)
}

# edit file with fzf
function fe(){
		vi $(du -a ./ | awk '{print $2}' | fzf)
}

# git workflow
function gp() {
  git add .
  git commit -m "$1"
  git push
}

# copy neovim config file to repo
function loadnvim() {
    cd ~/Github/neovim && cp -r ~/.config/nvim/* .
}

# create folder and cd into it
function mkcd() {
	mkdir -p "$@"  && cd $_
}

# ranger into folder
function racd {
    tempfile="$(mktemp -t tmp.XXXXXX)"
    ranger --choosedir="$tempfile" "${@:-$(pwd)}"

    test -f "$tempfile" &&
    if [ "$(cat -- "$tempfile")" != "$(echo -n `pwd`)" ]; then
        cd -- "$(cat "$tempfile")"
    fi
    rm -f -- "$tempfile"
}

# hugo reload
function loadhugo(){
    cd ~/Site/blog && hugo && cd ./public && git add . && git commit -m "update" && git push && cd ~/Site/blog
}

# edit neovim config file
function vimrc(){
  cd ~/.config/nvim && nvim init.lua
}
