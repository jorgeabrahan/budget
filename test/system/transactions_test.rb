require 'application_system_test_case'

class TransactionsTest < ApplicationSystemTestCase
  def setup
    @user = users(:one)
    login_as(@user, scope: :user)
    @category = @user.groups.first
    visit category_transactions_path(@category)
  end
  
  test 'Title transactions should be displayed' do
    assert_text 'TRANSACTIONS'
  end

  test 'Add a new transaction link should be displayed' do
    assert_selector 'a', text: 'Add a new transaction'
  end

  test 'Category id and name should be shown' do
    assert_text "##{@category.id} #{@category.name} total:"
  end

  test 'Category total should be shown' do
    assert_text @category.calculate_total
  end

  test 'Clicking add a new transaction link redirects to new_category_transaction_path' do
    click_link 'Add a new transaction'
    assert_current_path new_category_transaction_path(@category)
  end

  test 'All transactions are being displayed' do
    @category.dealings.each do |transaction|
      assert_text transaction.name
      assert_text transaction.amount
    end
  end

  test 'Creation date for each transaction is being displayed' do
    @category.dealings.each do |transaction|
      assert_text transaction.created_at.strftime("%B %d, %Y")
    end
  end
end