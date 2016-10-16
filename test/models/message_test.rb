require 'test_helper'

class MessageTest < ActiveSupport::TestCase

  test 'should accept valid attributes' do
    valid_attrs = {
      name: 'stephen',
      email: 'stephen@example.com',
      subject: 'hi',
      content: 'kthnxbai'
    }

    msg = Message.new valid_attrs

    assert msg.valid?
  end
end
