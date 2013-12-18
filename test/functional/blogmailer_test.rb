require 'test_helper'

class BlogmailerTest < ActionMailer::TestCase
  test "register" do
    mail = Blogmailer.register
    assert_equal "Register", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
