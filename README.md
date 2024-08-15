# seafile_fuse
#I previously tried building them into an image to auto start fuse and mount fuse dir, but due to limited skills, it didn’t work. After the container starts, U only need to execute start_seaf_fuse.sh separately. start fuse and mounted at /shared/seafile-fuse.

#
git clone https://github.com/Sheva-ws/seafile_fuse.git    # or any other way to get seafile_fuse  

mkdir -p /opt/seafile   

cd /opt/seafile

# cp files into work dir

cp -r /path/to/seafile_duse/* /opt/seafile/               

mv /path/to/docer-compose.yml.example ./docer-compose.yml 

# specifies this doc according to UR requrements

nano docer-compose.yml

#
docker-compose up -d

#
./start_seaf_fuse.sh                                     


