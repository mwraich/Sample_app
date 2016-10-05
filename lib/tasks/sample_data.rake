namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(name: 'meep',
                 email: 'meep@example.com',
                 password: 'password',
                 password_confirmation: 'password',
                 admin: true)
    99.times do |n|
      name = Faker::Name.name
      email = "roy-#{n+1}@example.com"
      password = 'password'
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end
