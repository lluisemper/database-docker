## database-docker

Inside of the root directori you will need this 2 files.
It will build an image of a postgres database, Only needed the first time, don't panic.
`sudo docker build -t virusimage .`

You can check that `virusimage` is there with the following comand:
`sudo docker images -a`

We will run the image:
`sudo docker run -d --name viruscontainer -p 5555:5432 virusimage`

You can check that you have a container named 'viruscontainer':
`sudo docker ps`

Get into the database terminal and check mock data:
`sudo docker exec -it viruscontainer psql -U postgres testvirusdb`

Inside postgres:
`\dt` show database
`select * from link;` to see mockdata

### Commands after checking that it works
* `sudo docker stop viruscontainer` stops container in case that you want to stop working or fucked up the database
* `sudo docker container start virus container` what you will do to start your container with the last data inserted
* `sudo docker run -d --name viruscontainer -p 5555:5432 virusimage` if you want to drop the data and have fresh mock data
