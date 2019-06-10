require 'test_helper'

class VisitedPagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @visited_page = visited_pages(:one)
  end

  test "should get index" do
    get visited_pages_url, as: :json
    assert_response :success
  end

  test "should create visited_page" do
    assert_difference('VisitedPage.count') do
      post visited_pages_url, params: { visited_page: { search_term_id: @visited_page.search_term_id, url: @visited_page.url } }, as: :json
    end

    assert_response 201
  end

  test "should show visited_page" do
    get visited_page_url(@visited_page), as: :json
    assert_response :success
  end

  test "should update visited_page" do
    patch visited_page_url(@visited_page), params: { visited_page: { search_term_id: @visited_page.search_term_id, url: @visited_page.url } }, as: :json
    assert_response 200
  end

  test "should destroy visited_page" do
    assert_difference('VisitedPage.count', -1) do
      delete visited_page_url(@visited_page), as: :json
    end

    assert_response 204
  end
end
