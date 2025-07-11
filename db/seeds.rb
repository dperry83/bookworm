# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
User.destroy_all
Book.destroy_all
Author.destroy_all
Review.destroy_all

User.create(
  [
    {
      email_address: "david@mail.com",
      password: "password",
      first_name: "David",
      last_name: "Perry"
    },
    {
      email_address: "adam@mail.com",
      password: "password",
      first_name: "Adam",
      last_name: "Perry"
    },
    {
      email_address: "ryan@mail.com",
      password: "password",
      first_name: "Ryan",
      last_name: "Perry"
    }
  ]
)
puts "Created #{User.count} users"

Author.create(
  [
    {
      name: "David Foster Wallace",
      birth_date: "1962-02-20",
      death_date: "2008-09-12"
    }
  ]
)
puts "Created #{Author.count} authors"

Book.create(
  [
    {
      title: "Infinite Jest"
    }
  ]
)
puts "Created #{Book.count} books"
