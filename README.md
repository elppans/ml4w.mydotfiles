# ml4w.mydotfiles

Repositório de dotfiles e configurações pessoais usados por @elppans ("ml4w"). Contém coleções organizadas de arquivos de configuração e módulos relacionados ao ambiente gráfico Wayland (Hyprland), utilitários de shell e temas/integrações para Quickshell.

## O que tem aqui

- com.ml4w.dotfiles.stable/
  - Estrutura de dotfiles organizada por XDG (ex.: `.config/`, `zshrc`, `bashrc`, etc.).
  - Múltiplas pastas de configuração para programas comuns: Hyprland, Quickshell, Waybar, Kitty, Rofi, Matugen, entre outros.
- dotfiles-sync.sh — script auxiliar para sincronizar/instalar estes dotfiles no sistema.

## Principais usos

1. Restaurar ou sincronizar minhas configurações pessoais em um novo sistema.
2. Fornecer módulos úteis para Hyprland + Quickshell (por exemplo, o módulo "overview" do Quickshell está incluído como componente).
3. Servir de referência / ponto de partida para quem quer configurar um ambiente Wayland semelhante.

## Como usar (rápido)

1. Clone o repositório:

```bash
git clone https://github.com/elppans/ml4w.mydotfiles ~/.ml4w.mydotfiles
cd ~/.ml4w.mydotfiles
```

2. Revise os arquivos antes de aplicar. As configurações aqui sobrescrevem arquivos em sua pasta home quando aplicadas.

3. Usar o script de sincronização (exemplo):

```bash
# Torna o script executável e roda em modo de teste
chmod +x dotfiles-sync.sh
./dotfiles-sync.sh --dry-run

# Para aplicar (remova --dry-run após revisar)
./dotfiles-sync.sh
```

O script tenta copiar/ligar arquivos para o local correto (~/.config, ~/, etc.). Leia o cabeçalho do script para entender exatamente o comportamento.

## Módulos e configurações notáveis

- Quickshell overview: um módulo QML que fornece visão geral de workspaces (inclui README e exemplos de configuração em `com.ml4w.dotfiles.stable/.config/quickshell/overview`).
- Hyprland: configurações e exemplos dentro de `com.ml4w.dotfiles.stable/.config/hypr`.
- Kitty, Waybar, Rofi, Matugen, e várias customizações de shell (bash/zsh/fish).

## Personalização

- Copie ou edite os arquivos em `~/.config/` e `~/.local/share/` conforme indicado nos READMEs internos para ajustar as preferências.
- Muitos módulos incluem `config.example.json` ou README com instruções específicas (ex.: Quickshell overview: `~/.config/quickshell/overview/config.json`).

## Contribuindo / Reportando problemas

Este repositório é uma coleção pessoal — manutenção é limitada. PRs com melhorias, correções e documentação são bem-vindos; abra um issue se algo não funcionar como esperado.

## Aviso

Use com cuidado: aplicar automaticamente dotfiles pode sobrescrever suas configurações atuais. Sempre faça backup antes.

---

Made with ❤️ by @elppans
