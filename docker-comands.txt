https://www.danieldcs.com/postgresql-e-pgadmin-com-docker-compose/

steps to up environment

1 -> docker compose build
2 -> docker compose up or docker compose up -d

extra:
    docker compose build --no-cache
    docker compose down
    docker compose down -v or --volumes
    docker ps
    docker ps -a 
    docker images 
    docker images -a 
    docker container ls 


    docker inspect <containerId>
    docker logs <containerId>

    docker --help
    docker inspect --help
    docker compose --help
    docker compose up --help
        
tip:
    ls -lahS -> Displays all files sorted by size and their permissions

docker compose linter:
https://medium.com/@zavoloklom/linting-and-formating-docker-compose-files-db734d10a73e

docker run -it --rm -v ${PWD}:/app \
  zavoloklom/dclint docker-compose.yml 

docker run -it --rm -v ${PWD}:/app \
  zavoloklom/dclint docker-compose.yml --fix
