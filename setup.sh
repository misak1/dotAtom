#!/bin/sh
if ! type wget >/dev/null 2>&1; then
  echo "'wget' command not found"
  exit;
fi
if ! type apm >/dev/null 2>&1; then
  echo "'apm' command not found"
  exit;
fi

# バックアップ
mv ~/.atom ~/.atom_bk`date +"%Y%m%d"`

# 推奨フォントインストール
open ./font/RictyDiminished/RictyDiminished-Bold.ttf
open ./font/RictyDiminished/RictyDiminished-BoldOblique.ttf
open ./font/RictyDiminished/RictyDiminished-Oblique.ttf
open ./font/RictyDiminished/RictyDiminished-Regular.ttf

mkdir ~/.atom
# 設定ファイルコピー
cp -Rfpav config.cson ~/.atom/
cp -Rfpav styles.less ~/.atom/

# パッケージインストール

apm install atom-beautify
apm install atom-jshint
apm install atom-ternjs
apm install autocomplete-paths
apm install color-picker
apm install editorconfig
apm install file-icons
apm install highlight-line
apm install highlight-selected
apm install language-jade
apm install language-stylus
apm install linter
apm install minimap
apm install minimap-autohide
apm install minimap-bookmarks
apm install minimap-git-diff
apm install minimap-highlight-selected
apm install minimap-pigments
apm install multi-cursor
apm install pigments
apm install pretty-json
apm install project-manager
apm install script
apm install zentabs

# apm rebuild-module-cache
