require 'rails_helper'

RSpec.describe Product, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  it 'requires a name' do
    product = Product.new(name: '')
    product.valid?
    expect(product.errors[:name].any?).to eq(true)
  end

it 'requires a pricing' do
  price = Product.new(price: '')
  price.valid?
  expect(price.errors[:price].any?).to eq(true)
end

it 'requires a description to be at least 7 characters' do
  des1 = Product.new(description: 'very nice')
  des2 = Product.new(description: 'nice')
  [des1, des2].each { |u| u.valid? }
  expect(des1.errors[:description].any?).to eq(false)
  expect(des2.errors[:description].any?).to eq(true)
end

  describe "relationships" do
    it "belongs to a category" do
      category = Category.create(name: "Category1")
      product = category.products.create(name: 'Boots', description: 'Made for Walking', price: 55.00)
      expect(product.category).to eq(category)
    end

    it "has many comments" do
      category = Category.create(name: "Category1")
      product = category.products.create(name: 'Boots', description: 'Made for Walking', price: 55.00)
      comment1 = product.comments.create(comment: "comment1")
      comment2 = product.comments.create(comment: "comment2")
      expect(product.comments).to include(comment1)
      expect(product.comments).to include(comment2)
  end
end
end
