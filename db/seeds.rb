# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
users = User.create!([
  { name: 'Jay Quigley', email: 'jay@qu.ig' },
  { name: 'Yelgiuq Yaj', email: 'yel@qu.ig' },
])

Post.create!(
  title: 'I am Jay',
  content: "Jay is doing good things....",
  user: users.first,
  url: "https://example.com/jay_intro",
)
Post.create!(
  title: 'I am Yelgiuq',
  content: "Yelgiuq is doing evil things....",
  user: users.second,
  url: "https://example.com/yelgiuq_intro",
)
