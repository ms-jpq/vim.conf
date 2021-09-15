#!/usr/bin/env bash

set -eu
set -o pipefail


cd "$(dirname "$0")" || exit 1

ARGS=(
  ~/.config/nvim/.vars/bin/tectonic
  --
  ./slides.tex
)

exec watchexec -- "${ARGS[*]}"

