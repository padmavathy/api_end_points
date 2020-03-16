require 'minitest/autorun'
require 'api_end_points'

class ApiEndPointTest < Minitest::Test
  def get_posts
    assert_equal "{'userId' =>10, 'id'=>98, 'title'=>'laboriosam dolor voluptates', 'body'=>'doloremque ex facilis sit sint culpa\nsoluta assumenda eligendi non ut eius\nsequi ducimus vel quasi\nveritatis est dolores'}",
      ApiEndPoint.get_posts
  end

end