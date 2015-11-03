# require 'rails_helper'
# RSpec.describe 'product profile page' do
#   it 'displays information about the product' do
#     category = Category.create(name: "Category")
#     product = category.products.create(name: 'Boots', description: 'Made for Walking', price: '55.00')
#     visit '/products'
#     click_link 'Show'
#     expect(current_path).to eq("/products/#{product.id}")
#     expect(page).to have_text('Boots')
#     expect(page).to have_text('Made for Walking')
#     expect(page).to have_text('$55.00')
#     expect(page).to have_text('Category')
#   end
# end
