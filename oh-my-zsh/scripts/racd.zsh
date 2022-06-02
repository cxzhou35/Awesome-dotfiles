# ranger 自动进入目录
function racd {
    # 创建一个临时文件并存储
    tempfile="$(mktemp -t tmp.XXXXXX)"
	# 运行ranger并要求其将最后一条路径输出到临时文件
    ranger --choosedir="$tempfile" "${@:-$(pwd)}"

	# 如果临时文件存在，则读取并且临时文件的内容不等于当前路径
    test -f "$tempfile" &&
    if [ "$(cat -- "$tempfile")" != "$(echo -n `pwd`)" ]; then
		# 将目录更改为临时文件中的路径
        cd -- "$(cat "$tempfile")"
    fi
	# 这行删除临时文件不是非常必要，因为Linux应该在下次启动时处理它
    rm -f -- "$tempfile"
}
