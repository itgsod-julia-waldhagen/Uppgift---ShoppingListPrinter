require 'rspec'

require_relative '../lib/shopping_list_printer'

describe 'format_shopping_list' do

  it 'should return "No items in list" if products is empty' do
    expect( format_shopping_list(products: []) ).to match "No items in list"
  end


  it 'should return a correctly formatted string of multiple products' do
    expect( format_shopping_list(products: ["cucumber", "umbrella", "spoon"]) ).to match "3 items:\n1: Cucumber\n2: Umbrella\n3: Spoon"
    expect( format_shopping_list(products: ["cucumber", "spoon"]) ).to match "2 items:\n1: Cucumber\n2: Spoon"
  end

  it 'should return a correctly formatted string of a single product' do
    expect( format_shopping_list(products: ["vacuum"]) ).to match "1 item:\n1: Vacuum"
  end

end
