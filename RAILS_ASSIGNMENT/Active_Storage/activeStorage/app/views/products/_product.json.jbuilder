json.extract! product, :id, :name, :product_image, :created_at, :updated_at
json.url product_url(product, format: :json)
json.product_image do
  json.array!(product.product_image) do |product_image|
    json.id product_image.id
    json.url url_for(product_image)
  end
end
