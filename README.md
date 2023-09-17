## 環境構築

### ビルド例

Dockerfileが存在するディレクトリ上で
```
docker build -t php-cli-env:bullseye .
```

### 実行例

```
docker run -it -d --name php-cli-env -p 9000:9000 --mount type=bind,source="$(pwd)"/src,target=/home/user php-cli-env:bullseye
```

### コンテナログイン

```
docker exec -it php-cli-env bash
```

## コンテナの停止と削除を同時に行う

```
docker rm -f  php-cli-env
```

### PHPUnit含むパッケージのインストール

```
composer install && composer dump-autoload
```

## PHPUnitの実行方法

### 基本形

```
./vendor/bin/phpunit tests/*Test.php
```

### 実行結果に色をつける

```
./vendor/bin/phpunit --color tests/*Test.php
```

### エイリアスを設定してphpunitコマンドから実行

```
alias phpunit='./vendor/bin/phpunit'
```
※Dockerfileに記載済み

### シェルスクリプトを使用してコマンド入力を省略

ファイルの作成
```bash
#!/bin/sh

./vendor/bin/phpunit --colors tests/*Test.php
```

実行
```
./test_runner.sh
```
