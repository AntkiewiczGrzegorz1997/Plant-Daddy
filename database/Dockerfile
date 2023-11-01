FROM postgres:latest

# Add dump.sql to the docker image
#COPY dump-plantasia.sql /data/dump-plantasia.sql
COPY dump-plantasia.sql /docker-entrypoint-initdb.d/

# CMD ["psql", "plantasia1", "<", "dump-plantasia.sql"]