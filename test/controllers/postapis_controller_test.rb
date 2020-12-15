require 'test_helper'

class PostapisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @postapi = postapis(:one)
  end

  test "should get index" do
    get postapis_url
    assert_response :success
  end

  test "should get new" do
    get new_postapi_url
    assert_response :success
  end

  test "should create postapi" do
    assert_difference('Postapi.count') do
      post postapis_url, params: { postapi: { message: @postapi.message, name: @postapi.name } }
    end

    assert_redirected_to postapi_url(Postapi.last)
  end

  test "should show postapi" do
    get postapi_url(@postapi)
    assert_response :success
  end

  test "should get edit" do
    get edit_postapi_url(@postapi)
    assert_response :success
  end

  test "should update postapi" do
    patch postapi_url(@postapi), params: { postapi: { message: @postapi.message, name: @postapi.name } }
    assert_redirected_to postapi_url(@postapi)
  end

  test "should destroy postapi" do
    assert_difference('Postapi.count', -1) do
      delete postapi_url(@postapi)
    end

    assert_redirected_to postapis_url
  end
end
