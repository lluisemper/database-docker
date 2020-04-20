## database-docker

Inside of the root directory.
It will build an image of a postgres database, Only needed the first time, don't panic.
`sudo docker build --no-cache -t virusimage .`

You can check that 'virusimage' is there with the following comand:
`sudo docker images -a`

We will run the image:
`sudo docker run -d --name viruscontainer -p 5432:5432 virusimage`

Start the container: `sudo docker start viruscontainer`

You can check that you have a container named 'viruscontainer':
`sudo docker ps`

Get into the database terminal and check mock data:
`sudo docker exec -it viruscontainer psql -U postgres postgres`

Inside postgres:
`\dt` show database
`select * from link;` to see mockdata

### if it complains...

`sudo docker stop viruscontainer`

`sudo docker rm viruscontainer`

You can run it back again, it should work

ATTENTION, if you want to remove all the shit of docker that is not use included volums - `sudo docker system prune -a`

If you only want to delete your shit - `sudo docker system prune`
