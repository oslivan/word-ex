require 'test_helper'

class WordSrcsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @word_src = word_srcs(:one)
  end

  test "should get index" do
    get word_srcs_url
    assert_response :success
  end

  test "should get new" do
    get new_word_src_url
    assert_response :success
  end

  test "should create word_src" do
    assert_difference('WordSrc.count') do
      post word_srcs_url, params: { word_src: { create_person: @word_src.create_person, name: @word_src.name } }
    end

    assert_redirected_to word_src_url(WordSrc.last)
  end

  test "should show word_src" do
    get word_src_url(@word_src)
    assert_response :success
  end

  test "should get edit" do
    get edit_word_src_url(@word_src)
    assert_response :success
  end

  test "should update word_src" do
    patch word_src_url(@word_src), params: { word_src: { create_person: @word_src.create_person, name: @word_src.name } }
    assert_redirected_to word_src_url(@word_src)
  end

  test "should destroy word_src" do
    assert_difference('WordSrc.count', -1) do
      delete word_src_url(@word_src)
    end

    assert_redirected_to word_srcs_url
  end
end
