require 'rails_helper'

RSpec.describe User, type: :model do
  before(:each) do
    @not_valid_user = User.new
    @user = User.new(name: 'Juan', email: 'juan@gmail.com', password: 'password')
    Group.create(author: @user, name: 'Category one', icon: 'https://images.com/icon.png')
    Group.create(author: @user, name: 'Category two', icon: 'https://images.com/icon-two.png')
    Dealing.create(author: @user, name: 'Dealing one', amount: 10)
    Dealing.create(author: @user, name: 'Dealing two', amount: 15)
  end

  it 'Should not be valid if properties are not provided' do
    expect(@not_valid_user).to_not be_valid
  end

  it 'Should not be valid if email is missing' do
    @user.email = ''
    expect(@user).to_not be_valid
  end

  it 'Should not be valid if password is missing' do
    @user.password = ''
    expect(@user).to_not be_valid
  end

  it 'Should not be valid if name has more then 100 characters' do
    @user.name = 'a' * 101
    expect(@user).to_not be_valid
  end

  it 'Should be valid if properties are provided' do
    expect(@user).to be_valid
  end

  it 'Should have many categories' do
    expect(@user.groups.length).to be 2
  end

  it 'Should have many transactions' do
    expect(@user.dealings.length).to be 2
  end
end
