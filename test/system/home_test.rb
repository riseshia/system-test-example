require 'application_system_test_case'

class HomeTest < ApplicationSystemTestCase
  test 'visits home index' do
    visit home_index_url
    assert_selector 'h1', text: 'Home#index'
  end

  test 'shows hello if user click "click"' do
    visit home_index_url
    click_on 'click'
    assert_selector '#result', text: 'hello'
  end
end
