# == Schema Information
#
# Table name: responses
#
#  id               :integer          not null, primary key
#  question_id      :integer
#  answer_choice_id :integer
#  created_at       :datetime
#  updated_at       :datetime
#  user_id          :integer
#

class Response < ActiveRecord::Base
  validates :question_id, :answer_choice_id, :respondent_id, presence: true

  belongs_to(
    :answer_choice,
    primary_key: :id,
    foreign_key: :answer_choice_id,
    class_name: :AnswerChoice
  )

  belongs_to(
    :respondent,
    primary_key: :id,
    foreign_key: :respondent_id,
    class_name: :User
  )

  has_one(
    :question,
      through: :answer_choice,
      source: :question
  )
end
