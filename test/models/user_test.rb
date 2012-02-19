require 'minitest/autorun'
require_relative '../test_helper'
require_relative '../../models/user'

describe User do
  before do
    @user = User.new
  end

  describe "saying hi" do
    it "respond with hi" do
      assert_equal "hi", @user.say_hi
    end
  end
end

