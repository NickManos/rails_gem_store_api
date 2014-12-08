require 'test_helper'

class ListingProductsTest < ActionDispatch::IntegrationTest
  # t.string   "name"
  # t.string   "description"
  # t.integer  "shine"
  # t.decimal  "price"
  # t.integer  "rarity"
  # t.string   "color"
  # t.integer  "faces"
  # t.string   "images"

  setup do
    Product.create!(
      name: 'Azurite',
      description: 'A beautiful blue gem',
      shine: 3,
      price: 2.99,
      rarity: 5,
      color: 'Blue',
      faces: 16
      )
    Product.create!(
      name: 'Rubizite',
      description: 'A beautiful red gem',
      shine: 4,
      price: 5.99,
      rarity: 7,
      color: 'Red',
      faces: 20
      )
  end
  test 'listing products' do
    get '/products'
    assert_equal 200, response.status
    assert_equal Mime::JSON, response.content_type
    assert_equal Product.count, JSON.parse(response.body).size
  end
end
