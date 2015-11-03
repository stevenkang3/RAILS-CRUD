require 'rails_helper'
RSpec.describe 'deleting product' do
  it 'destroys the product' do
    category = Category.create(name: "Category1")
    product = category.products.create(name: 'Boots', description: 'Made for Walking', price: '55.00')
    visit '/products'
    expect(page).to have_text("Boots")
    expect(page).to have_text("Category1")
    # expect(page).to have_button('Des')
    click_link "Destroy"
    expect(page).to_not have_text("Boots")
    expect(page).to_not have_text("Category1")
  end
end
