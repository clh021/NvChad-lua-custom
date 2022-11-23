#!/usr/bin/env bash
# leehom Chen clh021@gmail.com
set -e
linkDestPath="$HOME/.local/bin" # 最终建立可调用链接的目标路径。
binSaveFileSET="$HOME/sdk/node-VERSION/node.tar.gz" # 不能直接使用的设置，需要替换用户变量来得到实际的值
binSaveFileREAL=""
binSavePathSET="$HOME/sdk/node-VERSION" # 不能直接使用的设置，需要替换用户变量来得到实际的值
binSavePathREAL=""
switch() {
    ver="$1"
    # if no binPkg, download
    if ! test -f "$binSaveFileREAL"; then
        wget -c "https://nodejs.org/dist/${ver}/node-${ver}-linux-x64.tar.gz" -O "$binSaveFileREAL"
    fi

    # if no binPath, extract
    if ! test -f "$binSavePathREAL/bin/node" ; then
        cd "$binSavePathREAL"
        tar -xvzf "$binSaveFileREAL" --strip-components 1
    fi

    # apply bin
    ln -sf "$HOME/sdk/node-$1/bin/node" "$HOME/.local/bin/node"
    ln -sf "$HOME/sdk/node-$1/bin/corepack" "$HOME/.local/bin/corepack"
    ln -sf "$HOME/sdk/node-$1/bin/npm" "$HOME/.local/bin/npm"
    ln -sf "$HOME/sdk/node-$1/bin/npx" "$HOME/.local/bin/npx"

    # notice
    echo "switch new bash window to use."
    # The latest environment variables cannot be used in the current terminal environment.
    # A new terminal environment must be opened.current terminal env cann't use.
}

ver="$1"
if [ "$ver" == "list" ]; then
    ls "$HOME/sdk/" | grep -v .tar. | grep node- | sed "s/node-//"
    exit 0
fi
if [[ "$ver" = v* ]]; then
    set -x
    binSavePathREAL=${binSavePathSET/VERSION/$ver}
    binSaveFileREAL=${binSaveFileSET/VERSION/$ver}
    mkdir -p "$binSavePathREAL"
    mkdir -p "$linkDestPath"
    switch "$ver"
    node --version
else
    echo "usage: "
    echo "    node.set.sh list          show installed versions"
    echo "    node.set.sh v16.18.0      switch v16.18.0 version"
    echo "    node.set.sh v17.9.1       switch v17.9.1 version"
    echo "    node.set.sh v18.12.0      switch v18.12.0 version"
    echo "    node.set.sh v19.1.0       switch v19.1.0 version"
    exit 1
fi

