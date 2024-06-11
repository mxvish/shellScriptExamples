# unzip all zip in current directory with specifying directory names
for z in *zip; do unzip "$z" -d "${z:0:2}"; done
