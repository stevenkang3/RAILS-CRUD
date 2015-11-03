# require 'rails_helper'
# RSpec.describe 'creating product' do
#   before do
#     visit '/products/new'
#   end
#   it 'creates a new product and redirects to products page' do
#     fill_in 'Name', with: 'Table'
#     fill_in 'Description', with: 'Like New'
#     fill_in 'Price', with: '$9.99'
#     page.select("category")
#     click_button 'Create'
#     expect(current_path).to eq('/products')
#     expect(page).to have_text('Table')
#     expect(page).to have_text('category')
#   end
#   it 'displays errors without correct input' do
#     click_button 'Create'
#     expect(current_path).to eq('/products/new')
#     expect(page).to have_text("Name can't be blank")
#     expect(page).to have_text("Description can't be blank")
#   end
# end
