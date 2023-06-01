require 'rails_helper'

RSpec.describe Group, type: :model do
  before(:each) do
    @user = User.new(name: 'Camilo', email: 'camilo@gmail.com', password: 'fakepassword')
    @group = Group.create(author: @user, name: 'Random', icon: 'https://images.com/icon-two.png')
    @transaction_one = Dealing.create(author: @user, name: 'Dealing one', amount: 10)
    @transaction_two = Dealing.create(author: @user, name: 'Dealing two', amount: 15)
    @transaction_one.groups << @group
    @transaction_two.groups << @group
  end

  it 'Should not be valid if name is missing' do
    @group.name = ''
    expect(@group).to_not be_valid
  end

  it 'Should not be valid if name has more than 100 characters' do
    @group.name = 'a' * 101
    expect(@group).to_not be_valid
  end

  it 'Should not be valid if icon is missing' do
    @group.icon = ''
    expect(@group).to_not be_valid
  end

  it 'Should not be valid if icon has more than 250 characters' do
    @group.icon = 'a' * 251
    expect(@group).to_not be_valid
  end

  it 'Should be valid if all properties are provided' do
    expect(@group).to be_valid
  end

  it 'Should belong to a user' do
    expect(@group.author.id).to be @user.id
  end

  it 'Should have two transactions' do
    expect(@group.dealings.length).to be 2
  end

  it 'Should belong to each of the transactions' do
    expect(@transaction_one.groups[0].id).to be @group.id
    expect(@transaction_two.groups[0].id).to be @group.id
  end
end
