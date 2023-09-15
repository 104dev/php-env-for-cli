## 実行方法

### ビルド例

```
docker build -t php-cli-env:bullseye  
```

### 実行例

```
docker run -it -d --name php-cli-env -p 9000:9000 --mount type=bind,source="$(pwd)"/src,target=/home/user php-cli-env:bullseye
```

### コンテナログイン

```
docker exec -it php-cli-env bash
```

### PHPUnit含むパッケージのインストール

```
composer install && composer dump-autoload
```