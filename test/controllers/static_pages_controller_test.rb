require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = 'My Notes'
  end
  test 'should get home' do
    get root_url
    assert_response :success
    assert_select 'title', "Home | #{@base_title}"
  end

end
