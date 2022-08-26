require "test_helper"

class BookMailerTest < ActionMailer::TestCase
  test "book_issued" do
    mail = BookMailer.book_issued
    assert_equal "Book issued", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
