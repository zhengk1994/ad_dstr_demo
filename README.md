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
* ブラウザーでhttp://localhost:3000/users


# frozen_string_literal: true
class AdController < ApplicationController
  def index
    @ads = Ad.all
  end

  def edit
    @ad = Ad.find(params[:id])
  end

  def new
    @ad = Ad.new
  end

  def create
    @ad = Ad.new(ad_params)
    if @ad.save # 広告登録成功時
      flash[:notice] = 'Ad registered!'
      redirect_to(ad_index_path)
    else
      render('ad/new')
    end
  end

  def update
    @ad = Ad.find(params[:id])
    if @ad.update_attributes(ad_params)
      flash[:notice] = 'Ad updated!'
      redirect_to(ad_index_path)
    else
      render('ad/edit')
    end
  end

  def destroy
    Ad.find(params[:id]).destroy
    flash[:notice] = 'Ad deleted!'
    redirect_to(ad_index_path)
  end

  private

  def ad_params # Adオブジェクト作成時にフォームから入力したパラメーターを渡す。
    params.require(:ad).permit(:price, :text, :advertiser_id, :image)
  end
end


class AdApiController < ApplicationController
  def view
    array=[]

    target_ids = Ad.pluck(:id).sample( params[:count].to_i)
    ads=Ad.find(target_ids)
    ads.each do |ad|

      repo = Repo.find_by(ad_id: ad.id, adspot_id:  params[:adspot_id])
      unless repo
        repo = Repo.new(ad_id: ad.id,adspot_id:  params[:adspot_id])
      end

      repo.imp += 1
      repo.save
      p repo.imp

      array.push(
        { img_url: ad.image,
          body: ad.text,
          ad_id: ad.id }
      )
    end
    render json: array
  end

  def click

    if repo = Repo.find_by(ad_id:  params[:ad_id], adspot_id:  params[:adspot_id])

      repo.click += 1
      repo.totalcost +=  Ad.find( params[:ad_id]).price
      repo.save

      p repo.click
      p repo.totalcost

    else
      render status: 500, json: { status: 500, message: 'Ad was not existed! ' }
    end
  end


  private
  def count_p

  end


end
