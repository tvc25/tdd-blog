require 'rails_helper'

describe 'adding a post' do

  it 'a user can add a post to the site' do 
    visit '/'
    click_link 'Add a post'
    fill_in 'Title', with: 'HELLO HELLO'
    fill_in 'Content', with: 'this is a post'
    click_button 'Submit'

    expect(page).to have_content 'HELLO HELLO'
  end
end