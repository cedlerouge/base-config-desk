set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8

set background=dark
set showmode                   " affiche le mode (insert ou autre)
set nocompatible
set backspace=indent,eol,start " activation de la touche backspace
set whichwrap=<,>,[,]          " Autorise le passage d'une ligne à l'autre avec les flèches 
set noai                       " autoindentation inactive
set ruler                      " affiche la position du curseur en bas  droite
set sm                         " syntax match:soulignement d'une parenthese associee
set hlsearch                   " colorisation de la recherche

set modeline

set laststatus=2               " Affiche une barre de status en bas de l'écran"
set statusline=%<%f%h%m%r%=%l,%c\ %P "Contenu de la barre de status

syntax on                      " colorisation active

set nobackup                   " pas de fichier de sauvegarde

set ts=4                       " taille des tabulations
set sw=4                       " taille des indentations
set tw=0                       " textwidth: largeur du texte (pour la coeure) 0=pas de limite
set expandtab                  " converti les tab en espaces




