require_relative 'acceptance_helper'

describe "Home page", %q{
    In order to have an awesome sinatra template
    As a ruby developer
    I want to see the readme
  } do

  include AcceptanceHelper

  it "greets the visitor" do
    visit "/"
    assert has_content?("This is a neat Sinatra template")
  end
end
