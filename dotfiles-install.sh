#!/usr/bin/env bash

set -euo pipefail

REPO_DIR="$HOME/.dotfiles/ml4w.mydotfiles"
TARGET_DIR="$HOME/.mydotfiles"
BACKUP_DIR="$HOME/.dotfiles-backups"
TIMESTAMP="$(date +"%Y%m%d_%H%M%S")"

# 1. Valida existência do repositório de origem
if [[ ! -d "$REPO_DIR" ]]; then
	echo "Erro: Repositório $REPO_DIR não encontrado." >&2
	exit 1
fi

# 2. Cria diretório de destino se não existir
mkdir -p "$TARGET_DIR"

# 3. Realiza o backup se TARGET_DIR contiver arquivos
if [[ -n "$(ls -A "$TARGET_DIR" 2>/dev/null)" ]]; then
	echo "Conteúdo detectado em $TARGET_DIR. Gerando backup..."
	mkdir -p "$BACKUP_DIR"

	BACKUP_FILE="$BACKUP_DIR/mydotfiles_backup_$TIMESTAMP.tar.gz"

	tar -czf "$BACKUP_FILE" -C "$TARGET_DIR" .
	echo "Backup salvo em: $BACKUP_FILE"
else
	echo "Diretório $TARGET_DIR está vazio. Pulando backup."
fi

# 4. Sincronização e Restauração dos arquivos
echo "Sincronizando dotfiles..."

rsync -avhP \
	--exclude='/.git/' \
	--exclude='/.gitignore' \
	--exclude='/README.md' \
	--exclude='/dotfiles-sync.sh' \
	--exclude='/dotfiles-install.sh' \
	--exclude='/backups/' \
	"$REPO_DIR/" "$TARGET_DIR/"

echo "Instalação concluída com sucesso!"
