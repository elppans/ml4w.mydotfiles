#!/usr/bin/env bash

set -euo pipefail

DEST_DIR="$HOME/.dotfiles/ml4w.mydotfiles"

# Sincroniza via rsync
rsync -avhP \
  --exclude='/.git/' \
  --exclude='/.gitignore' \
  --exclude='/README.md' \
  "$HOME/.mydotfiles/" "$DEST_DIR/"

cd "$DEST_DIR"

# Stage dos arquivos
git add .

# Executa o commit apenas se houver alterações no working tree
if ! git diff-index --quiet HEAD --; then
    git commit -m "sync: $(date +"%a %d.%m.%y %H:%M:%S")"
    git push origin main
else
    echo "Nenhuma alteração detectada para commit."
fi
