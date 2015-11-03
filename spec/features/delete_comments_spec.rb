require 'rails_helper'
RSpec.describe 'deleting comment' do
it "deletes comment and redirects to the products show page" do
  category = Category.create(name: "Category1")
  product = category.products.create(name: "Product1", description: "This is good", price: 10.00)
  comment = product.comments.create(comment: "Comment1")

  visit "/products/#{product.id}"

  expect(page).to have_text(comment.comment)
  click_button "Destroy"
  expect(page).to_not have_text(comment.comment)
end
end
