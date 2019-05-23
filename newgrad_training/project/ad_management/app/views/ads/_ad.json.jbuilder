json.extract! ad, :id, :body, :img, :price, :url, :created_at, :updated_at
json.url ad_url(ad, format: :json)
