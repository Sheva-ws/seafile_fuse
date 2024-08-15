# seafile_fuse
#I previously tried building them into an image to auto start fuse and mount fuse dir, but due to limited skills, it didn’t work. After the container starts, U only need to execute start_seaf_fuse.sh separately. start fuse and mounted at /shared/seafile-fuse.

git clone                                                 #get seafile_fuse

mkdir -p /opt/seafile                                     #make work dir 
cd /opt/seafile
cp -r /path/to/seafile_duse/* /opt/seafile/               #cp files into work dir

mv /path/to/docer-compose.yml.example ./docer-compose.yml #rename

nano docer-compose.yml                                    #specifies this doc according to UR requrements

docker-compose up -d

./start_seaf_fuse.sh                                     # exec


