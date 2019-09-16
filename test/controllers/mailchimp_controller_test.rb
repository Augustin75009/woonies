require 'test_helper'

class MailchimpControllerTest < ActionDispatch::IntegrationTest
  test "should get add_to_list" do
    get mailchimp_add_to_list_url
    assert_response :success
  end

end
