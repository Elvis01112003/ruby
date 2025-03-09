require "test_helper"

class CusersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cuser = cusers(:one)
  end

  test "should get index" do
    get cusers_url
    assert_response :success
  end

  test "should get new" do
    get new_cuser_url
    assert_response :success
  end

  test "should create cuser" do
    assert_difference("Cuser.count") do
      post cusers_url, params: { cuser: { email: @cuser.email, gender: @cuser.gender, mobile: @cuser.mobile, name: @cuser.name, password: @cuser.password } }
    end

    assert_redirected_to cuser_url(Cuser.last)
  end

  test "should show cuser" do
    get cuser_url(@cuser)
    assert_response :success
  end

  test "should get edit" do
    get edit_cuser_url(@cuser)
    assert_response :success
  end

  test "should update cuser" do
    patch cuser_url(@cuser), params: { cuser: { email: @cuser.email, gender: @cuser.gender, mobile: @cuser.mobile, name: @cuser.name, password: @cuser.password } }
    assert_redirected_to cuser_url(@cuser)
  end

  test "should destroy cuser" do
    assert_difference("Cuser.count", -1) do
      delete cuser_url(@cuser)
    end

    assert_redirected_to cusers_url
  end
end
