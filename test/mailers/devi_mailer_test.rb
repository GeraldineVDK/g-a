require 'test_helper'

class DeviMailerTest < ActionMailer::TestCase
  test "nouveau_devi" do
    mail = DeviMailer.nouveau_devi
    assert_equal "Nouveau devi", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
