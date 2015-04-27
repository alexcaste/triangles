require('capybara/rspec')
require('./app')

Capybara.app = Sinatra::Application

describe('the triangle path' , {:type => :feature}) do
    it('takes user input through a form and returns a page with the type of triangle') do
    visit('/')
    fill_in('side1' , :with => '1')
    fill_in('side2' , :with => '1')
    fill_in('side3' , :with => '1')
    click_button('Rock On')
    expect(page).to have_content('Equilateral')
    end

end
