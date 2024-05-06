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

# hugo reload
# receive one paramater with commit
function hp(){
  cd ~/Github/site/blog && hugo && cd ./public && git add . && git commit -m "$1" && git push && cd ~/Github/site/blog
}

# edit neovim config file
function vc(){
  nvim ~/.config/nvim/init.lua
}

# auto clean extra latex files
function cleantex() {
  # Specify the extensions of the files to be deleted
  extensions=("aux" "acn" "acr" "alg" "glg" "log" "glo" "gls" "out" "toc" "gz" "synctex.gz" "fdb_latexmk" "fls" "xdv" "lof" "lot" "blg" "bbl" "idx" "ind" "ist")

  # Loop through the current directory and delete files with the specified extensions
  for ext in "${extensions[@]}"
  do
      find . -type f -name "*.${ext}" -delete
  done

  echo "Extra LaTeX files cleaned up successfully."
}

function yy() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

function update_all_app(){
  brew update
  brew upgrade --greedy-auto-updates
  brew cleanup --prune=all
  cleanbrew
  mas upgrade
}
