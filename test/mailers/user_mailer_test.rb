require "test_helper"

class UserMailerTest < ActionMailer::TestCase
  test "account_activation" do
    user = User.first
    mail = UserMailer.account_activation(user)
    assert_equal "Account有効化", mail.subject
    assert_equal [user.email], mail.to
    assert_equal ["from@example.com"], mail.from

    mail_body = "#{user.name} 様、こんにちは"
    parts = mail.body.parts.map(&:encoded)
    # debugger
    parts.each do |p|
      assert_match mail_body, p
    end

    assert_emails 1 do
      mail.deliver_now
    end
  end

  test "password_reset" do
    mail = UserMailer.password_reset
    assert_equal "Password reset", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end
end
