install_dvm() {
  echo '\e[34;1mRunning\e[0m `curl -fsSL https://deno.land/x/dvm/install.sh | sh`'
  echo

  curl -fsSL https://deno.land/x/dvm/install.sh | sh
  result=$?

  echo
  if [[ result -eq 0 ]]; then
    echo '\e[32;1mSuccess!\e[0m'
  else
    echo '\e[31;1mSuccess!\e[0m'
  fi
}

if [[ -d ~/.dvm ]]; then
  export DENO_INSTALL="/home/yuki/.deno"
  export PATH="$PATH:$DENO_INSTALL/bin"
  export DVM_DIR="/home/yuki/.dvm"
  export PATH="$PATH:$DVM_DIR/bin"
fi

land_aliases=( aleph )
for cmd in $land_aliases; do
  alias "$cmd=land $cmd"
done
