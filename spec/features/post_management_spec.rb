require 'rails_helper'

describe 'Commenting' do

  before do 
    Post.create(title: 'HELLO HELLO', content: 'this is a post')
  end

  it 'can add a comment to a post' do
    visit posts_path
    click_link 'HELLO HELLO'
    click_link 'Add comment'

    fill_in 'Author', with: "Alberto"
    fill_in 'Remark', with: 'That is smashing!'

    click_button 'Submit'

    expect(page).to have_content 'That is smashing!'

  end

end