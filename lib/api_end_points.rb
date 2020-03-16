
class ApiEndPoints 
  def self.get_posts
    translator = Translator.new
    translator.get_posts
  end
  def self.get_user_posts(user_id)
    translator = Translator.new
    translator.get_user_posts(user_id)
  end
  def self.get_post(post_id)
    translator = Translator.new
    translator.get_post(post_id)
  end
  
  def self.get_post_comments(post_id)
    translator = Translator.new
    translator.get_post_comments(post_id)
  end
  
  def self.get_comments(post_id)
    translator = Translator.new
    translator.get_comments(post_id)
  end
  
  def self.create_post
    translator = Translator.new
    translator.create_post
  end

  def self.update_post(post_id)
    translator = Translator.new
    translator.update_post(post_id)
  end

  # def self.delete_post(post_id)
  #   translator = Translator.new
  #   translator.delete_post(post_id)
  # end
end

require 'api_end_points/translator'