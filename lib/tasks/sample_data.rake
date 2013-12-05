namespace :db do
  desc "Fill the DataBase with sample data"
  task populate: :environment do
    User.create!(name: "Example User",
                  email: "example@railstutorial.org",
                  password: "foobar",
                  password_confirmation: "foobar"
    )
    99.times do
    |n|
      name = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password = "password"
      User.create!(name: name, email: email, password: password, password_confirmation: password)
    end

    desc "Fill the DataBase with sample tweets"
    users = User.all(limit: 5)
    50.times do
      content = Faker::Lorem.sentence(5)
      users.each{ |u| u.microposts.create!(content: content) }
    end

  end

end