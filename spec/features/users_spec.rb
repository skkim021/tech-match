require 'rails_helper'

describe "the homepage", :type => :feature do

  it "shows me the right page for site root" do
    visit '/'
    expect(page).to have_content 'Log'
  end
end