#!/usr/bin/env bash

set -eu
set -o pipefail


cd "$(dirname "$0")" || exit 1


FILE="$PWD/slides.tex"
ARGS=(
  --watch
  "$FILE"
  --
  ~/.config/nvim/.vars/bin/tectonic
  --
  "$FILE"
)

exec watchexec "${ARGS[@]}"
