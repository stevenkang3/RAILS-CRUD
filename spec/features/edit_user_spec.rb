require 'rails_helper'
RSpec.describe 'editing product' do
  it 'should display form with values already prepopulated' do
    category = Category.create(name: "Category")
    product = category.products.create(name: 'Boots', description: 'Made for Walking', price: '55.00')
    visit '/products'
    click_link 'Show'
    click_link 'Edit'
    expect(current_path).to eq("/products/#{product.id}/edit")
    expect(find_field('Name').value).to eq(product.name)
    expect(find_field('Category').value).to eq("#{category.id}")
    expect(find_field('Description').value).to eq(product.description)
    expect(find_field('Price').value).to eq("#{product.price}")
  end
end
