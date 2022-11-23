#!/usr/bin/env bash
# leehom Chen clh021@gmail.com
set -e

display_usage() {
    echo -e "
example:
    $0 -b
Usage:
    b build before test (default:false)
    c clean build cache (default:false)"

    exit 1
}

# 解析传递的参数
_BUILD=
_CLEAN=

parseArg() {
  # check whether user had supplied -h or --help . If yes display usage
  if [[ ( $* == "--help") ||  $* == "-h" ]]; then
      display_usage
  fi
  while getopts "bc" arg; do
    case $arg in
      b) _BUILD=true ;;
      c) _CLEAN=true ;;
      ?) display_usage ;;
    esac
  done
}

parseArg "$@"

showOptions() {
  echo "_BUILD: $_BUILD"
  echo "_CLEAN: $_CLEAN"
}

dockerBuild() {
  docker build -t leehom/nvim .
  docker ps -a | grep Exited | grep "/bin/sh -c" | awk '{ print $1; }' | xargs --no-run-if-empty docker rm
  docker images | grep none | awk '{ print $3; }' | xargs --no-run-if-empty docker rmi --force
}

doTest() {
  # docker cp -r `pwd` nvim:`pwd`
  docker run -it --rm --name nvim --hostname=nvim test.nvim bash
}

main() {
    if [[ -n "$_BUILD" ]]; then
      echo '正在构建镜像'
    fi
    if [[ -n "$_CLEAN" ]]; then
      echo '正在清理构建缓存'
    fi
    echo '准备进入测试环境'
}

showOptions
main