# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ActiveRecord::Base.transaction do
  User.create(user_name: 'Ryan')
  User.create(user_name: 'Candra')
  User.create(user_name: 'Kobe')
  User.create(user_name: 'Jackie')
  User.create(user_name: 'Abraham')


  Poll.create(title: 'Food',author_id: 1)
  Poll.create(title: 'Climate Change',author_id: 2)
  Poll.create(title: 'Basketball',author_id: 3)
  Poll.create(title: 'Ruby', author_id: 2)

  Question.create(text: 'What is your favorite food?', poll_id: 1)
  Question.create(text: 'Do you believe in climate change?', poll_id: 2)
  Question.create(text: 'What is climate change?', poll_id: 2)
  Question.create(text: 'Do you like Kobe', poll_id: 3)
  Question.create(text: 'Is ruby a functional language?', poll_id: 4)

  AnswerChoice.create(text: "Yes", question_id: 2)
  AnswerChoice.create(text: "No", question_id: 2)
  AnswerChoice.create(text: "IDK", question_id: 2)

  AnswerChoice.create(text: "Your mom", question_id: 3)
  AnswerChoice.create(text: "Caused by humans", question_id: 3)
  AnswerChoice.create(text: "It's a hoax made by the Donald", question_id: 3)


  AnswerChoice.create(text: "Yes", question_id: 4)
  AnswerChoice.create(text: "No", question_id: 4)
  AnswerChoice.create(text: "IDK", question_id: 4)

  AnswerChoice.create(text: "Yes", question_id: 5)
  AnswerChoice.create(text: "No", question_id: 5)
  AnswerChoice.create(text: "IDK", question_id: 5)

  Response.create(question_id: 2, answer_choice_id: 1, respondent_id: 1)
  Response.create(question_id: 2, answer_choice_id: 2, respondent_id: 5)
  Response.create(question_id: 3, answer_choice_id: 4, respondent_id: 4)
  Response.create(question_id: 4, answer_choice_id: 7, respondent_id: 2)
end
