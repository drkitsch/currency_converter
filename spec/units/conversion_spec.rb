require './lib/conversion'
require 'spec_helper'

describe Conversion do 
  it 'converts USD to GBP' do 
    conversion = Conversion.new(100, 'USD')
    expect(conversion.result).to eq('£80.0')
  end
end 