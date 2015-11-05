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
apm install color-picker
apm install editorconfig
apm install emmet
apm install file-icons
apm install highlight-line
apm install language-jade
apm install language-stylus
apm install linter
apm install minimap
apm install multi-cursor
apm install pretty-json
apm install project-manager
apm install script
apm install term2
apm install zentabs
