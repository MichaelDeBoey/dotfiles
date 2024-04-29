# Add directories to the PATH and prevent to add the same directory multiple times upon shell reload.
add_to_path() {
  if [[ -d "$1" ]] && [[ ":$PATH:" != *":$1:"* ]]; then
    export PATH="$1:$PATH"
  fi
}

# Load Composer tools
add_to_path "$HOME/.composer/vendor/bin"

# Load Node global installed binaries
add_to_path "$HOME/.node/bin"

# Use project specific binaries before global ones
add_to_path "node_modules/.bin:vendor/bin"
