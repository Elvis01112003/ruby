require "application_system_test_case"

class CusersTest < ApplicationSystemTestCase
  setup do
    @cuser = cusers(:one)
  end

  test "visiting the index" do
    visit cusers_url
    assert_selector "h1", text: "Cusers"
  end

  test "should create cuser" do
    visit cusers_url
    click_on "New cuser"

    fill_in "Email", with: @cuser.email
    fill_in "Gender", with: @cuser.gender
    fill_in "Mobile", with: @cuser.mobile
    fill_in "Name", with: @cuser.name
    fill_in "Password", with: @cuser.password
    click_on "Create Cuser"

    assert_text "Cuser was successfully created"
    click_on "Back"
  end

  test "should update Cuser" do
    visit cuser_url(@cuser)
    click_on "Edit this cuser", match: :first

    fill_in "Email", with: @cuser.email
    fill_in "Gender", with: @cuser.gender
    fill_in "Mobile", with: @cuser.mobile
    fill_in "Name", with: @cuser.name
    fill_in "Password", with: @cuser.password
    click_on "Update Cuser"

    assert_text "Cuser was successfully updated"
    click_on "Back"
  end

  test "should destroy Cuser" do
    visit cuser_url(@cuser)
    click_on "Destroy this cuser", match: :first

    assert_text "Cuser was successfully destroyed"
  end
end
