require 'test_helper'

class ArticleTest < ActiveSupport::TestCase

  test "translate errors" do
    article = Article.new
    article.save
    assert ["{{attribute}} {{message}}", "{{attribute}} {{message}}"] != article.errors.full_messages
  end

end
