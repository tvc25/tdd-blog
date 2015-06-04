require 'rails_helper'

describe Post do 

  let(:alberto_post) {Post.new(title: 'HELLO HELLO',
                                content:'this is a post')}

  it 'must have a title' do
    post = Post.new
    expect(post.valid?).to eq false
  end

  it 'must have content' do
    post = Post.new(title: 'HELLO HELLO')
    expect(post.valid?).to eq false
  end

# Need to find out why this has to be comments.none
  context 'no posts' do
    it 'should return a message saying no posts' do
      expect(alberto_post.no_posts).to eq 'No posts yet!'
    end
  end
end
