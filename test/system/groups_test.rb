require 'application_system_test_case'

class GroupsTest < ApplicationSystemTestCase
  def setup
    @user = users(:one)
    login_as(@user, scope: :user)
    visit categories_path
  end

  test 'Title categories should be displayed' do
    assert_text 'CATEGORIES'
  end

  test 'Add a new category link should be displayed' do
    assert_selector 'a', text: 'Add a new category'
  end

  test 'Clicking add a new category link redirects to new_category_path' do
    click_link 'Add a new category'
    assert_current_path new_category_path
  end

  test 'All categories are being displayed' do
    @user.groups.each do |group|
      assert_text group.name
      assert_selector "img[src='#{group.icon}']"
    end
  end

  test 'Total for each group is being displayed' do
    @user.groups.each do |group|
      assert_text group.calculate_total
    end
  end

  test 'Creation date for each group is being displayed' do
    @user.groups.each do |group|
      assert_text group.created_at.strftime('%B %d, %Y')
    end
  end
end
