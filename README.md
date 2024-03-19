# Blockbuster Base
## USAGE FOR DOCKER USERS
1. Run the following command to pull the mysql image
```bash
docker pull mysql
```
2. After the image is pulled run the following command to start the container.**You can change the your_secret_password to be any password you like**

```bash
docker run --name movie-shop-server -e MYSQL_ROOT_PASSWORD=your_secret_password -p 33061:3306 -d mysql
```
3. Connect the container to the software you'll be using (mysql workbench or azure data stuio or vs code).
**Make sure to use the following configurations host:localhost port:33061 username:root**
4. Finally run the commands in [db_compilation.sql](./db_compilation.sql) ...the database will be fully set up. :boom: happy hacking!!