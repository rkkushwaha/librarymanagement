require "test_helper"

class RejectMailerTest < ActionMailer::TestCase
  test "reject_request" do
    mail = RejectMailer.reject_request
    assert_equal "Reject request", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
