# Docker image for `スッキリわかるSQL入門`

http://book.impress.co.jp/books/1111101167

## Usage

### Build container

```
$ docker build -t testdb .
```

### Run container

```
$ docker run -d --name ssql testdb
```

### Execute sql command(example)

```
$ docker exec ssql psql -U postgres test -c "select * from users"
```
