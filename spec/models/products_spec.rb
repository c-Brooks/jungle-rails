require 'rails_helper'
require 'spec_helper'

RSpec.describe Product, type: :model do

  describe 'Validations' do

    it 'should be valid' do
      @cat = Category.new(name: 'Category')

      @prod = Product.new(
        name: 'Name',
        category: @cat,
        description: 'Description',
        quantity: 12,
        price: 9.99
        )
      expect(@prod).to be_valid
    end

    it 'should should have a name' do
      @cat1 = Category.new(name: 'Category')

      @prod1 = Product.new(
        name: nil,
        category: @cat1,
        description: 'Description',
        quantity: 12,
        price: 9.99
        )
      # @prod.errors.messages[:name].should include("Name can\'t be blank")
      # expect(@prod).to have(1).error_on(:name)
      expect(@prod1.errors.size).to eq(1)

    end

    it 'should be valid' do
      @cat = Category.new(name: 'Category')

      @prod = Product.new(
        name: 'Name',
        category: @cat,
        description: 'Description',
        quantity: 12,
        price: 9.99
        )
        @prod.save
    end

    it 'should be valid' do
      @cat = Category.new(name: 'Category')

      @prod = Product.new(
        name: nil,
        category: @cat,
        description: 'Description',
        quantity: 12,
        price: 9.99
        )

      expect(@prod).to be_valid
    end


  end
end
