require 'test_helper'

class QuestionTest < ActiveSupport::TestCase
  fixtures :questions
  
  test "vote count with no votes" do
    q = Question.create
    assert_equal 0, q.vote_count
  end
  
  test "vote count with one up vote" do
  	q = Question.create
    q.votes << Vote.create(:up => true)
    assert_equal 1, q.vote_count
  end
  
  test "vote count with one down vote" do
    q = Question.create
    q.votes << Vote.create(:up => false)
    assert_equal -1, q.vote_count
  end
  
  test "vote count with one up and one down vote" do
    q = Question.create
    q.votes << Vote.create(:up => true)
    q.votes << Vote.create(:up => false)
    assert_equal 0, q.vote_count
  end
end
