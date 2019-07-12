# README

この`README.md`と同じフォルダで、下記のコマンドを実行してください。

* [brew](https://brew.sh/) をインストール
* `brew install rbenv`
* `rbenv install 2.3.1`
* `rbenv init`
* `rbenv global 2.3.1`
* `brew install mysql`
* `vi ~/.bash_profile` // .bash_profile ファイルの作成
  * `eval "$(rbenv init -)"` // .bash_profile 内に追加
  * `esc` -> `:wq`
* `source ~/.bash_profile`
* `gem install bundler`
* `bundle config --local build.mysql2 "--with-ldflags=-L/usr/local/opt/openssl/lib --with-cppflags=-I/usr/local/opt/openssl/include"`
* `bundle install --path vendor/bundle`
* `gem install carrierwave`
* `brew install ImageMagick`


## 初めて起動の前

* MySQLを起動：`brew services start mysql`
* サンプルテーブルを作る
	* `bundle exec rake db:create`
	* `bundle exec rake db:migrate`


## 起動
* `bundle exec bin/rails s`
* ブラウザーでhttp://localhost:3000/
