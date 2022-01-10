#run postgres and spring-boot containers
docker-compose up -d
#create database and table in postgres

#create database in postgres
docker exec -it postgres psql -U postgresuser -c "create database fastapi;"
#create table in postgres in my_database
docker exec -it postgres psql -U postgresuser fastapi -c "CREATE TABLE notes (id INTEGER PRIMARY KEY, text VARCHAR, completed BOOLEAN);"
#insert sample record
docker exec -it postgres psql -U postgresuser fastapi -c "insert into notes(id,text,completed) values(1,'test',true);"
