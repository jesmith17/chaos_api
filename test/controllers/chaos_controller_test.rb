require 'test_helper'

class ChaosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chao = chaos(:one)
  end

  test "should get index" do
    get chaos_url, as: :json
    assert_response :success
  end

  test "should create chao" do
    assert_difference('Chao.count') do
      post chaos_url, params: { chao: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show chao" do
    get chao_url(@chao), as: :json
    assert_response :success
  end

  test "should update chao" do
    patch chao_url(@chao), params: { chao: {  } }, as: :json
    assert_response 200
  end

  test "should destroy chao" do
    assert_difference('Chao.count', -1) do
      delete chao_url(@chao), as: :json
    end

    assert_response 204
  end
end
