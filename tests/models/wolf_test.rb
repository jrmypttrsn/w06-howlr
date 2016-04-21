require_relative  "../test_helper"

class WolfTest < Minitest::Test
  
  def test_invalid_without_name
    w = Wolf.new(name: "Scott Howard", description: "I always wanted to be special...but 
      I never expected this.", image_url: "https://cinefilesreviews.files.wordpress.com/2015/11/teen-wolf-michael-j-fox-movie-review-1985.jpg")
    assert(w.valid?, "should be valid with a question and an answer")

    w.name = nil
    refute(w.valid?, "should be invalid without a name")
  end
  
  def test_invalid_without_answer
    w = Wolf.new(name: "Scott Howard", description: "I always wanted to be special...but 
      I never expected this.", image_url: "https://cinefilesreviews.files.wordpress.com/2015/11/teen-wolf-michael-j-fox-movie-review-1985.jpg")
    assert(w.valid?, "should be valid with a question and an answer")

    w.description = nil
    refute(w.valid?, "should be invalid without a description")
  end

  def test_invalid_without_image_url
    w = Wolf.new(name: "Scott Howard", description: "I always wanted to be special...but 
      I never expected this.", image_url: "https://cinefilesreviews.files.wordpress.com/2015/11/teen-wolf-michael-j-fox-movie-review-1985.jpg")
    assert(w.valid?, "should be valid with a question and an answer")

    w.image_url = nil
    refute(w.valid?, "should be invalid without an image url")
  end

end
