# == Schema Information
#
# Table name: answer_choices
#
#  id          :integer          not null, primary key
#  text        :string           not null
#  created_at  :datetime
#  updated_at  :datetime
#  question_id :integer
#

class AnswerChoice < ActiveRecord::Base
  validates :text, presence: true

  has_many(
    :responses,
    primary_key: :id,
    foreign_key: :answer_choice_id,
    class_name: :Response
  )

  belongs_to(
    :question,
      primary_key: :id,
      foreign_key: :question_id,
      class_name: :Question
  )
end
