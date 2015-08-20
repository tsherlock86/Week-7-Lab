require 'test_helper'

class UserAccountsTest < ActionDispatch::IntegrationTest

  test "signing up" do
    visit("/users/sign_in")
    click_link("Sign up")
    fill_in("Email", :with => "tad@sherlock.com")
    fill_in("Password", :with => "password")
    fill_in("Password confirmation", :with => "password")
    click_on("Sign up")
    assert page.has_content?('Logout')
  end

  # test "creating a new pin" do
  #   click_link("New Pin")
  #   fill_in("Title", :with => "Barney")
  #   fill_in("Image", :with => "https://media.giphy.com/media/t6xwz9eA2N6s8/giphy.gif")
  #   fill_in("Tag list", :with => "funny")
  #   click_on("Create Pin")
  #   assert page.has_content?('Barney')
  # end
end
