require "rails_helper"

RSpec.describe "listing of all comments" do
  it "displays list of all comments" do

    category1 = Category.create(name: "Category1")
    product1 = category1.products.create(name: "Product1", description: "This is good", price: 10.00)
    comment1 = product1.comments.create(comment: "Comment1 for product1")

    category2 = Category.create(name: "Category2")
    product2 = category2.products.create(name: "Product2", description: "This is good", price: 10.00)
    comment2 = product2.comments.create(comment: "Comment2 for product2")

    visit "/comments"
    expect(page).to have_text(comment1.comment)
    expect(page).to have_text(comment1.comment)
    expect(page).to have_text(product1.name)
    expect(page).to have_text(product2.name)
  end

   it "lists comments related to a particular product in the product show page" do
     category = Category.create(name: "Category1")
     product = category.products.create(name: "Product1", description: "This is good", price: 10.00)
     comment1 = product.comments.create(comment: "Comment1")
     comment2 = product.comments.create(comment: "Comment2")

     visit "/products/#{product.id}"

     expect(page).to have_text(comment1.comment)
     expect(page).to have_text(comment2.comment)
   end

end
