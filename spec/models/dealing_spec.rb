require 'rails_helper'

RSpec.describe Dealing, type: :model do
  before(:each) do
    @user = User.new(name: 'Hamilton', email: 'hamilton@gmail.com', password: 'unsafepassword')
    @group = Group.create(author: @user, name: 'Category with transactions', icon: 'https://images.com/icon.png')
    @transaction_one = Dealing.create(author: @user, name: 'Transaction one', amount: 10)
    @transaction_one.groups << @group
  end

  it 'Should not be valid if the amount is negative or zero' do
    @transaction_one.amount = 0
    expect(@transaction_one).to_not be_valid
  end

  it 'Should not be valid if name is missing' do
    @transaction_one.name = ''
    expect(@transaction_one).to_not be_valid
  end

  it 'Should be valid if name and amount is provided' do
    expect(@transaction_one).to be_valid
  end

  it 'Should belong to a user' do
    expect(@transaction_one.author.id).to be @user.id
  end

  it 'Should belong to a category' do
    expect(@transaction_one.groups[0].id).to be @group.id
  end

  it 'Should not be valid if name has more than 100 characters' do
    @transaction_one.name = 'a' * 101
    expect(@transaction_one).to_not be_valid
  end
end
