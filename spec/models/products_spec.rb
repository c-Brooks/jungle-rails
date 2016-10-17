require 'rails_helper'

RSpec.describe Product, type: :model do
  let(:cat) { Category.new(name: 'Category')}

  let(:prod) { Product.new(
    name: 'Name',
    category: cat,
    description: 'Description',
    quantity: 12,
    price: 9.99
    ) }

  describe 'Validations' do
    it 'should be valid' do
      expect(prod).to be_valid
    end
  end
end
