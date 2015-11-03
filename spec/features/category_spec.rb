require 'rails_helper'
RSpec.describe Category, type: :model do
  it 'requires a name' do
  category = Category.new(name: "");
  category.valid?

  expect(category.errors[:name].any?).to eq(true)
  # describe 'relationships' do
  #   it 'has many products' do
      # your code here
    end
  end
