# Docker image for `スッキリわかるSQL入門`

http://book.impress.co.jp/books/1111101167

## Usage

### Build container

```
$ docker build -t postgresqldb .
```

### Run container

```
$ docker run --name ssql -itd --restart always --publish 5432:5432 postgresqldb
```

### Login

```
$ docker exec -it ssql bash
```

### Execute sql command(example)

```
$ docker exec ssql psql -U postgres test -c "select * from users"
```
