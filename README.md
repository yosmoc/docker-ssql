# Docker image for `スッキリわかるSQL入門`

http://book.impress.co.jp/books/1111101167

## Usage

### Build container

```
$ docker build -t postgresqldb .
```

### Create and run container

```
$ docker run --name ssql -itd --restart always --publish 5432:5432 postgresqldb
```

Create the databases and tables.
NOTE: it takes several minutes to execute the database initialize script. During the time, you cannot connect the database.

### start container

```
$ docker start ssql
```

### stop container

```
$ docker stop ssql
```

### Execute sql command(example)

```
$ docker exec ssql psql -U postgres ssql-Can02_01 -c "select * from 家計簿"
    日付    |    費目    |      メモ      | 入金額 | 出金額
------------+------------+----------------+--------+--------
 2013-02-03 | 食費       | コーヒーを購入 |      0 |    380
 2013-02-10 | 給料       | 1月の給料      | 280000 |      0
 2013-02-11 | 教養娯楽費 | 書籍を購入     |      0 |   2800
 2013-02-14 | 交際費     | 同期会の会費   |      0 |   5000
 2013-02-18 | 水道光熱費 | 1月の電気代    |      0 |   7560
(5 rows)
```

### Login

```
$ docker exec -u postgres -it ssql bash
```
