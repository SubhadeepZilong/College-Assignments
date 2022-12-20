#! /usr/bin/bash
#Write a shell script to rename all pdf files in a directory with suffix  _xyz. Suppose, one of the file in the directory is abc.pdf. After executing shell script, it will be abc_xyz.pdf.

for f in *.pdf
do 
    echo "Process started"
    pre="${f%.pdf}"
    mv -- "$f" "${pre}_xyz.pdf"
    echo "Renamed"
done
