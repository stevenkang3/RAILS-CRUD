require 'rails_helper'
RSpec.describe 'listing products' do
  it 'displays list of products' do
    c1 = Category.create(name: "Household")
    c2 = Category.create(name: "Electronics")
    c1.products.create(name: 'Boots', description: 'Made for Walking', price: '55.00')
    c2.products.create(name: 'Headphones', description: 'Made for Hearing', price: '65.00')
    visit '/products'
    expect(page).to have_text('Made for Walking')
    expect(page).to have_text('$55.00')
    expect(page).to have_text('Boots')
    # expect(page).to have_text('$535.01')
  end
end
