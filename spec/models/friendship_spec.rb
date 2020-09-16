require 'rails_helper'

RSpec.describe Friendship, type: :model do
  test_u = User.create(email: 'test2@test.com', name: 'mateo', gravatar_url: 'http://google.com', password: 'this is a password')
  test_u1 = User.first
  test_u = User.create(email: 'test@test.com', name: 'pastor', gravatar_url: 'http://google.com', password: 'this is a password')
  test_u2 = User.last

  it 'FAIL CHECK - Checks if a friendship can be created' do
    test_f = Friendship.create(user_id: nil, friend_id: nil)
    expect(test_f).to be_invalid
  end

  it 'SUCCESS CHECK - Checks if a friendship can be created' do
    test_f = Friendship.create(user_id: test_u1.id , friend_id: test_u2.id, status: false)
    expect(test_f).to be_valid
  end
end
