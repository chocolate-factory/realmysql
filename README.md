
# RealMysql Docker

## Introduction
For people who study with [`Real MySQL`](http://wikibook.co.kr/real-mysql/) that is published by [wikibooks](http://wikibook.co.kr/).

## Usage
- MySQL Server Version: 5.7.22

**If you want to start mysql server**
```
make all
```

or

```
make run
make initialize-database
```

**If you want to stop mysql server**
```
make stop
```

**Account info for connecting**
```
Host: 127.0.0.1
Username: root
Password: X (empty)
```

## Notice
- Use your mysql client like [`Sequel Pro`](https://www.sequelpro.com/), [`DataGrip`](https://www.jetbrains.com/datagrip/) and etc to execute SQL.
