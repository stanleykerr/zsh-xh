#!/usr/bin/env zsh
# cSpell:words shellcheck
# shellcheck disable=SC1090

local TARGET_CMD="xh"

# Exit if the 'xh' command can not be found
if ! (( $+commands[$TARGET_CMD] )); then
  return
fi

# Completions directory for `mise` command
local COMPLETIONS_DIR="${0:A:h}/completions"
local COMPLETIONS_FILE="$COMPLETIONS_DIR/_$TARGET_CMD"

# Add completions to the FPATH
typeset -TUx FPATH fpath
fpath=("$COMPLETIONS_DIR" $fpath)

# If the completion file does not exist yet, then we need to autoload
# and bind it to `xh`. Otherwise, compinit will have already done that.
if [[ ! -f "$COMPLETIONS_FILE" ]]; then
  typeset -g -A _comps
  autoload -Uz "_$TARGET_CMD"
  _comps[$TARGET_CMD]="_$TARGET_CMD"
fi

# Generate and load completion in the background
xh --generate complete-zsh >| "$COMPLETIONS_FILE" &|
