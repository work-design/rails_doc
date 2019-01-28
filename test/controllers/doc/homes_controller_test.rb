require 'test_helper'

class Doc::HomesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @doc_home = doc_homes(:one)
  end

  test "should get index" do
    get doc_homes_url
    assert_response :success
  end

  test "should get new" do
    get new_doc_home_url
    assert_response :success
  end

  test "should create doc_home" do
    assert_difference('Home.count') do
      post doc_homes_url, params: { doc_home: {  } }
    end

    assert_redirected_to doc_home_url(Home.last)
  end

  test "should show doc_home" do
    get doc_home_url(@doc_home)
    assert_response :success
  end

  test "should get edit" do
    get edit_doc_home_url(@doc_home)
    assert_response :success
  end

  test "should update doc_home" do
    patch doc_home_url(@doc_home), params: { doc_home: {  } }
    assert_redirected_to doc_home_url(@doc_home)
  end

  test "should destroy doc_home" do
    assert_difference('Home.count', -1) do
      delete doc_home_url(@doc_home)
    end

    assert_redirected_to doc_homes_url
  end
end
