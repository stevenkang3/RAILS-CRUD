require 'rails_helper'
RSpec.describe 'updating product' do
  it 'should update product and redirect to products page' do
    category = Category.create(name: "Category")
    category2 = Category.create(name: "Category2")
    product = category.products.create(name: 'Boots', description: 'Made for Walking', price: '55.00')
    visit '/products'
    click_link 'Show'
    click_link 'Edit'
    fill_in 'Name', with: 'Pants'
    # page.select "Category2", from: "Category"
    click_button 'Update'
    expect(current_path).to eq('/products')
    expect(page).to have_text('Pants')
    # expect(page).to have_text("Category2")
  end
end
