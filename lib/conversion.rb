

class Conversion

FROM_RATES = { 'USD' => 0.8 }
  
  
def initialize(amount, from_currency)
  @amount = amount
  @from_currency = from_currency
end 

def result
  "£#{@amount * FROM_RATES[@from_currency]}"
end 

end 