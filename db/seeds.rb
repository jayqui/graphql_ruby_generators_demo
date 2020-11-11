# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
users = User.create([
  { name: 'Jay Quigley', email: 'jay@qu.ig' },
  { name: 'Yelgiuq Yaj', email: 'yel@qu.ig' },
])
Post.create(title: 'I am Jay', content: "My content....", user: users.first)
Post.create(title: 'I am Yelgiuq', content: "My content....", user: users.second)
