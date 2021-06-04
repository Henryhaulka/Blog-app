require "test_helper"
class ArticlesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get @articles_index_url
    assert_response :success
  end

  test "should not save article without title" do
  article = Article.new
  assert_not article.save
end

end
