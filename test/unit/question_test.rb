require 'test_helper'

class QuestionTest < ActiveSupport::TestCase
  fixtures :questions
  
  test "vote count with no votes" do
    q = Question.new
    assert_equal 0, q.vote_count
  end
  
  test "vote count with one up vote" do
    q = questions(:one)
    assert_equal 1, q.vote_count
  end
  
  test "vote count with one down vote" do
    q = questions(:two)
    assert_equal -1, q.vote_count
  end
  
  test "vote count with one up and one down vote" do
    q = questions(:evens)
    assert_equal 0, q.vote_count
  end
end
