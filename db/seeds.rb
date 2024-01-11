# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


User.create(name: "Harendra", email: "harendra@gmail.com", mobile: 9876543210, password: "123456")
User.create(name: "Pratap", email: "pratap@gmail.com", mobile: 8765432109, password: "123456")
User.create(name: "Singh", email: "singh@gmail.com", mobile: 7654321098, password: "123456")
User.create(name: "Sisodia", email: "sisodia@gmail.com", mobile: 6543210987, password: "123456")


Post.create(content: "Hiring Now", user_id:1)
Post.create(content: "Open to work", user_id:2)
Post.create(content: "Golden Opportunity", user_id:3)
Post.create(content: "Upcoming Technologies", user_id:4)


Comment.create(content: "best opprtunity", post_id:1, user_id:2)
Comment.create(content: "best", post_id:1, user_id:3)
Comment.create(content: "good opprtunity", post_id:1, user_id:4)

Comment.create(content: "Really", post_id:2, user_id:1)
Comment.create(content: "Wow", post_id:2, user_id:3)
Comment.create(content: "Aajao", post_id:2, user_id:4)

Comment.create(content: "Price kya hai", post_id:3, user_id:1)
Comment.create(content: "Keemat kitni hai", post_id:3, user_id:2)
Comment.create(content: "chamakta hai kya", post_id:3, user_id:4)

Comment.create(content: "Sachhi", post_id:4, user_id:1)
Comment.create(content: "Abe kya baat kar raha hai", post_id:4, user_id:2)
Comment.create(content: "bata", post_id:4, user_id:3)


Like.create(expression: "1", post_id:1, user_id: 2)
Like.create(expression: "0", post_id:1, user_id: 3)
Like.create(expression: "1", post_id:1, user_id: 4)

Like.create(expression: "0", post_id:2, user_id: 1)
Like.create(expression: "0", post_id:2, user_id: 3)
Like.create(expression: "0", post_id:2, user_id: 4)

Like.create(expression: "1", post_id:3, user_id: 1)
Like.create(expression: "1", post_id:3, user_id: 2)
Like.create(expression: "1", post_id:3, user_id: 4)

Like.create(expression: "0", post_id:4, user_id: 1)
Like.create(expression: "1", post_id:4, user_id: 2)
Like.create(expression: "0", post_id:4, user_id: 3)

