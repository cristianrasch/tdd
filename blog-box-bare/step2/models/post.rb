#require File.expand_path("string_ext", "lib")
#require File.expand_path("nil_class_ext", "lib")

class Post
  attr_accessor :created_on, :title, :text, :filename
  
  def initialize(post_file)
  end
  
  def valid?
  end
  
  def to_html
  end
  
private

  def parse_created_on(created_on)
  end
  
  def parse_title(title)
  end
end