require "faraday"
require "faraday_middleware"
require "byebug"
require 'json'

class ApiEndPoints::Translator
  attr_accessor :conn

  def initialize
    @conn = Faraday.new(url: url) do |faraday|
      faraday.adapter Faraday.default_adapter
      faraday.response :json
    end
  end

  def url
    "http://jsonplaceholder.typicode.com"
  end

  def get_posts
    response = conn.get("posts")
    puts response.body
  end

  def get_user_posts(user_id)
    response = conn.get("posts?userId=#{user_id}")
    puts response.body
  end
  
  def get_post(post_id)
    response = conn.get("posts/#{post_id}")
    puts response.body
  end
  
  def get_post_comments(post_id)
    response = conn.get("posts/#{post_id}/comments")
    puts response.body
  end
  
  def get_comments(post_id)
    response = conn.get("comments?postId=#{post_id}")
    puts response.body
  end
  
  def create_post
    body_params = {title: "padma", body:"test", userId: 1}.to_json
    response = conn.post '/posts', body_params
    puts response.body
  end
  
  def update_post(post_id)
    body_params = {title: "padma_test", body:"test111111111111", userId: 1}.to_json
    response = conn.patch "posts/#{post_id}", body_params
    puts response.body
  end

  def delete_post(post_id)
    response = conn.delete "posts/#{post_id}"
    puts response.body
  end
end