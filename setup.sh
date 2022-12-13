#! /usr/bin/env bash

PYN_DEVBOX_HOME=$(cd "$(dirname "$0")" && pwd -P)

# @COMMAND _with_arguments [count] [...]        ensures the arguments count is at least as expected
_with_arguments() {
    count=${1}
    shift
    if [[ "$#" -lt ${count} ]]; then
        echo "missing arguments, expected at least ${count} but received $#"
        exit 1
    fi
}

function config_box() {
  _with_arguments 1 "$@"
  devbox_env=${1}

  # environment vars
  echo "export PYN_DEVBOX_ENV=${devbox_env}" >> ~/.bashrc
  echo "export PYN_DEVBOX_HOME=${PYN_DEVBOX_HOME}" >> ~/.bashrc
  echo "export PATH=${PATH}:${PYN_DEVBOX_HOME}/cli/bin:~/bin" >> ~/.bashrc
  ln -sfnv "${PYN_DEVBOX_HOME}"/cli/.devboxrc ~/.devboxrc
  echo "source ~/.devboxrc" >> ~/.bashrc

  # promptline
  ln -sfnv "${PYN_DEVBOX_HOME}"/cli/.promptline.sh ~/.promptline.sh
  echo "source ~/.promptline.sh" >> ~/.bashrc

  # vim
  ln -sfnv "${PYN_DEVBOX_HOME}"/cli/.vimrc ~/.vimrc
  ln -sfnv "${PYN_DEVBOX_HOME}"/.vim  ~/.vim
  vim +PluginInstall +qall
}
