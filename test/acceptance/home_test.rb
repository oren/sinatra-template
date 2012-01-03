require_relative 'acceptance_helper'

describe "Home page", %q{
    In order to have an awesome sinatra template
    As a ruby developer
    I want to see the readme
  } do

  include AcceptanceHelper

  it "return 200" do
    visit "/"
    assert_equal 200, page.status_code
  end

  it "greets the visitor" do
    visit "/"
    assert has_content?("This is a neat Sinatra template")
  end
end
