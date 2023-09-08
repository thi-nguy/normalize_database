## Intro

This is a repos for testing how to normalize database

## How to start it

- `docker-compose up`
- Go to `localhost` for the site.
- Go to `localhost:8002` for phpMyadmin. Using password and user as in `MYSQL_USER` and `MYSQL_PASSWORD` found in the file `docker-compose.yml`.

## Knowledge gathered along the way

### Advice from experienced dev.

- Better do a simple database at first. Don't do normalization right away, it just creates complexity in the code. We can do it later when it's necessary. To avoid changing the codes while we normalize database, we can use some amount of abstraction: for example create function (in SQL) to call for data instead of using sql directly. Use OOP (class can inherit from the parents class which deals with database, so we just need to change the code from the Parents?)

### Database Normalization: good examples.

https://en.wikipedia.org/wiki/Database_normalization

### Easy to remember each NF.

https://www.freecodecamp.org/news/database-normalization-1nf-2nf-3nf-table-examples/#thesecondnormalform2nf
