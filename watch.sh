#!/usr/bin/env bash

set -eu
set -o pipefail


cd "$(dirname "$0")" || exit 1


ARGS=(
  --exts
  '.tex'
  --
  ~/.config/nvim/.vars/bin/tectonic
  --
  "$PWD/slides.tex"
)

exec watchexec "${ARGS[@]}"
