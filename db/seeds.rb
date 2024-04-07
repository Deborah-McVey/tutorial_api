(1..10).each do |i|
    tutorial = Tutorial.create(
        title: Faker::Lorem.sentence,
        description: Faker::Lorem.sentence,
        published: Faker::Boolean,
    )
end    