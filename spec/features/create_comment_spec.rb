require "rails_helper"

RSpec.describe "creating a comment for a product" do
  it "creates a new comment and redirect to product show page" do
    category = Category.create(name: "Category1")
    product = category.products.create(name: "Product1", description: "This is good", price: 10.00)
    # comment = product.comments.create(comment: "Comment1")
    visit "/products/#{product.id}"
    fill_in "Comment", with: "comment 1"
    click_button "Create"
    expect(current_path).to eq ("/products/#{product.id}")
    expect(page).to have_text("comment 1")
  end
end
