#!/bin/bash

sudo -k
# on suit le lien du site
wget http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz 
# on décompresse l'archive reçue
tar -xvf install-tl-unx.tar.gz
# on supprime l'archive
rm install-tl-unx.tar.gz
# on renomme le dossier décompressé
mv install-tl* install-tl
# on lance une installation locale et light
./install-tl/install-tl --profile=texlive.profile
# on supprime le dossier d'installation
rm -r install-tl

# On suit les instructions données à la fin de l'installation :
# Add /home/jsmith/texlive/2020/texmf-dist/doc/man to MANPATH.
# Add /home/jsmith/texlive/2020/texmf-dist/doc/info to INFOPATH.
# Most importantly, add /home/jsmith/texlive/2020/bin/x86_64-linux
# to your PATH for current and future sessions.

echo '' >> ~/.profile
echo '# >>> TeX Live >>>' >> ~/.profile 
echo 'export MANPATH=${MANPATH}:/home/jsmith/texlive/2020/texmf-dist/doc/man' >> ~/.profile
echo 'export INFOPATH=${INFOPATH}:/home/jsmith/texlive/2020/texmf-dist/doc/info' >> ~/.profile
echo 'export PATH=${PATH}:/home/jsmith/texlive/2020/bin/x86_64-linux' >> ~/.profile
echo '# <<< TeX Live <<<' >> ~/.profile
echo '# <<< installé grâce à T. Kovaltchouk <<<' >> ~/.profile
echo '' >> ~/.profile

echo '' >> ~/.bashrc
echo '# >>> TeX Live >>>' >> ~/.bashrc 
echo 'export MANPATH=${MANPATH}:/home/jsmith/texlive/2020/texmf-dist/doc/man' >> ~/.bashrc
echo 'export INFOPATH=${INFOPATH}:/home/jsmith/texlive/2020/texmf-dist/doc/info' >> ~/.bashrc
echo 'export PATH=${PATH}:/home/jsmith/texlive/2020/bin/x86_64-linux' >> ~/.bashrc
echo '# <<< TeX Live <<<' >> ~/.bashrc
echo '# <<< installé grâce à T. Kovaltchouk <<<' >> ~/.bashrc
echo '' >> ~/.bashrc

/home/jsmith/texlive/2020/bin/x86_64-linux/tlmgr install texliveonfly
/home/jsmith/texlive/2020/bin/x86_64-linux/tlmgr list --only-installed > packages_texlive_installés.txt
