# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user1 = User.create(email: "testuser1@gmail.com", password: "123456", password_confirmation: "123456")
user2 = User.create(email: "testuser2@gmail.com", password: "123456", password_confirmation: "123456")


1.upto(5) do |i|
    Member.create(name: "test member #{i}", user_id: user1.id)
end

1.upto(5) do |i|
    Member.create(name: "test member #{i+6}", user_id: user2.id)
end

1.upto(10) do |i|
    Task.create(task: "test task #{i}", completed: false, due_date: Date.today, details: "test detils", member_id: Member.first.id, user_id: user1.id)
end

1.upto(10) do |i|
    Task.create(task: "test task #{i+11}", completed: false, due_date: Date.today, details: "test detils", member_id: Member.second.id, user_id: user1.id)
end

1.upto(10) do |i|
    Task.create(task: "test task #{i+21}", completed: false, due_date: Date.today, details: "test detils", member_id: Member.third.id, user_id: user1.id)
end

1.upto(10) do |i|
    Task.create(task: "test task #{i+31}", completed: false, due_date: Date.today, details: "test detils", member_id: Member.last(3).first.id, user_id: user2.id)
end

1.upto(10) do |i|
    Task.create(task: "test task #{i+41}", completed: false, due_date: Date.today, details: "test detils", member_id: Member.last(3).second.id, user_id: user2.id)
end

1.upto(10) do |i|
    Task.create(task: "test task #{i+51}", completed: false, due_date: Date.today, details: "test detils", member_id: Member.last(3).third.id, user_id: user2.id)
end