require "test_helper"

class UserTest < ActiveSupport::TestCase
  include ActiveJob::TestHelper
    test "should send request email" do
      assert_enqueued_with(UserMailer, :send_email, args: [ "some_link_type" ]) do
        post send_request_email_authentication_users_url, params: { link_type: "some_link_type" }
      end
    assert_redirected_to index_path
    assert_equal "send succesful", flash[:notice]
  end
end
