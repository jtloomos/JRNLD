# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

User.destroy_all
Topic.destroy_all
Question.destroy_all
UserQuestion.destroy_all

################ USER SEED ################

user_seed = [
  { email: 'public@public.com',
    username: 'public',
    password: 12345678 },
  { email: 'jrnld@jrnld.com',
    username: 'jrnld',
    password: 12345678 },
  { email: 'test@test.com',
    username: 'test',
    password: 12345678 }
]

user_seed.each do |user|
  @user = User.new(user)
  @user.save!
end

################ TOPIC SEED ################

topic_seed = %w[career love family social health creativity]

topic_seed.each do |topic|
  Topic.create!(title: topic)
end

################ QUESTION SEED ################

question_seed = [
  { title: Faker::Hipster.sentence(word_count: 5, supplemental: true, random_words_to_add: 4),
    answer_type: "boolean",
    topic_id: rand(1..6),
    user: User.first},
  { title: Faker::Hipster.sentence(word_count: 5, supplemental: true, random_words_to_add: 4),
    answer_type: "boolean",
    topic_id: rand(1..6),
    user: User.first},
  { title: Faker::Hipster.sentence(word_count: 5, supplemental: true, random_words_to_add: 4),
    answer_type: "boolean",
    topic_id: rand(1..6),
    user: User.first},
  { title: Faker::Hipster.sentence(word_count: 5, supplemental: true, random_words_to_add: 4),
    answer_type: "boolean",
    topic_id: rand(1..6),
    user: User.first},
  { title: Faker::Hipster.sentence(word_count: 5, supplemental: true, random_words_to_add: 4),
    answer_type: "boolean",
    topic_id: rand(1..6),
    user: User.first},
  { title: Faker::Hipster.sentence(word_count: 5, supplemental: true, random_words_to_add: 4),
    answer_type: "boolean",
    topic_id: rand(1..6),
    user: User.first},
  { title: Faker::Hipster.sentence(word_count: 5, supplemental: true, random_words_to_add: 4),
    answer_type: "boolean",
    topic_id: rand(1..6),
    user: User.first},
  { title: Faker::Hipster.sentence(word_count: 5, supplemental: true, random_words_to_add: 4),
    answer_type: "boolean",
    topic_id: rand(1..6),
    user: User.first}
]

question_seed.each do |question|
  Question.create!(question)
end

################ USER QUESTION SEED ################

user_question_seed = [
  { user: User.second,
    question_id: 1,
    frequency: "daily" },
  { user: User.second,
    question_id: 3,
    frequency: "weekly" },
    { user: User.second,
    question_id: 4,
    frequency: "daily" },
  { user: User.second,
    question_id: 5,
    frequency: "monthly" },
  { user: User.second,
    question_id: 7,
    frequency: "daily" },
  { user: User.second,
    question_id: 8,
    frequency: "daily" },
  { user: User.third,
    question_id: 2,
    frequency: "weekly" },
  { user: User.third,
    question_id: 3,
    frequency: "monthly" },
  { user: User.third,
    question_id: 4,
    frequency: "daily" },
  { user: User.third,
    question_id: 6,
    frequency: "daily" },
  { user: User.third,
    question_id: 8,
    frequency: "weekly" },
]

user_question_seed.each do |user_question|
  UserQuestion.create!(user_question)
end
