if Rails.env.development?
  puts "deleting all users in develoment environment only"
  User.destroy_all
end

puts "Seeding users"

fixture_file_path = Rails.root.join("test", "fixtures", "users.yml")

fixture_content = File.read(fixture_file_path)

interpolated_users = YAML.load(ERB.new(fixture_content).result(binding))

interpolated_users.each do |key, user|
  User.find_or_initialize_by(email: user["email"]) do |u|
    u.update!(user)
  end
  puts "Seeded user #{user["email"]}"
end

puts "Seeding users completed"
