#!/usr/bin/env bash
# LaTeX package install script
# Author: Xu Cheng

command_exists () {
    type "$1" &> /dev/null ;
}

if ! command_exists realpath ; then
    if command_exists grealpath ; then
        realpath() {
            grealpath "$1"
        }
    else
        realpath() {
            [[ $1 = /* ]] && echo "$1" || echo "$PWD/${1#./}"
        }
    fi
fi

SCRIPT_PATH=$(realpath $(cd $(dirname $0);pwd))
cd $SCRIPT_PATH/..

TEXMFLOCAL=`kpsewhich --var-value=TEXMFLOCAL | awk -v RS="" -v FS="[\r\n]" '{print $1}' `

install(){
echo "Install hustreport.cls template into local."
mkdir -p "${TEXMFLOCAL}/tex/latex/hustreport/"
cp -f ./hustreport/hustreport.cls "${TEXMFLOCAL}/tex/latex/hustreport/"
cp -f ./hustreport/hust-title.eps "${TEXMFLOCAL}/tex/latex/hustreport/"
cp -f ./hustreport/hust-title.pdf "${TEXMFLOCAL}/tex/latex/hustreport/"
mkdir -p "${TEXMFLOCAL}/doc/latex/hustreport/"
cp -f ./hustreport/hustreport.pdf "${TEXMFLOCAL}/doc/latex/hustreport/"
mkdir -p "${TEXMFLOCAL}/doc/latex/hustreport/example/"
cp -f ./hustreport/hustreport-zh-example.pdf "${TEXMFLOCAL}/doc/latex/hustreport/example/"
cp -f ./hustreport/hustreport-zh-example.tex "${TEXMFLOCAL}/doc/latex/hustreport/example/"
cp -f ./hustreport/hustreport-en-example.pdf "${TEXMFLOCAL}/doc/latex/hustreport/example/"
cp -f ./hustreport/hustreport-en-example.tex "${TEXMFLOCAL}/doc/latex/hustreport/example/"
cp -f ./hustreport/fig-example.pdf "${TEXMFLOCAL}/doc/latex/hustreport/example/"
cp -f ./hustreport/ref-example.bib "${TEXMFLOCAL}/doc/latex/hustreport/example/"
hash
}

uninstall(){
echo "Uninstall hustreport.cls template."
rm -rf "${TEXMFLOCAL}/tex/latex/hustreport/"
rm -rf "${TEXMFLOCAL}/doc/latex/hustreport/"
hash
}

hash(){
echo "Refresh TeX hash database."
texhash
}

help(){
echo "Usage:"
echo " $(basename $0) install          - install hustreport.cls template into local."
echo " $(basename $0) uninstall        - uninstall hustreport.cls template."
echo ""
}

if [[ $1 = "install" ]]; then
    install
elif [[ $1 = "uninstall" ]]; then
    uninstall
else
    help
fi
