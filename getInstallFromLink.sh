#!/usr/bin/env sh
# on suit le lien du site
wget http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
# on décompresse l'archive reçue
ark --batch install-tl-unx.tar.gz
rm install-tl-unx.tar.gz
