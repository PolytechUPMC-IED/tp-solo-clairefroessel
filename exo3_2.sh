#!/bin/bash

cd $1
liste_archives=`ls`
for archive in $liste_archives;
do 
tar xzvf $archive
done
