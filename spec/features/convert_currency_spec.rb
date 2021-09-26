require 'spec_helper'

feature 'Currency Conversions' do 
  context 'from USD to GBP' do 
    scenario '100 USD is £80' do 
      visit('/')
      fill_in(:amount, with: 100)
      fill_in(:from_currency, with: 'USD')
      click_button('GO!')
      expect(page).to have_content('£80')
    end 
  end 
end