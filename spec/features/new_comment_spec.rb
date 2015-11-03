require "rails_helper"

RSpec.describe "new comment" do
  it "displays correct fields to create a new comment for a particular product" do
    category = Category.create(name: "Category1")
    product = category.products.create(name: "Product1", description: "This is good", price: 10.00)
    # comment = product.comments.create(comment: "Comment1")

    visit "/products/#{product.id}"

    expect(page).to have_field("Comment")

  end
end
