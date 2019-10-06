require 'faker'
require 'date'

clubs = (1...Faker::Number.number(digits: 1)).map{|e| Club.create({
    name:Faker::Team.creature,
    created_at:Faker::Date.backward(days: 2),
    updated_at:Faker::Date.backward(days: 1),
    nickname: Faker::FunnyName.name,
    home_venue:Faker::Team.state,
    state:Faker::Team.state,
    establish:Faker::Number.between(from: 1900, to: 2020),
    club_url:"https://www.google.com",
    members:Faker::Number.number(digits: 5)
})}

clubs.each do |club| 
    (1...Faker::Number.number(digits: 2)).map{|e|
        Player.create({
            name: Faker::FunnyName.name,
            date_of_birth: Faker::Date.backward(days: 2),
            height: Faker::Number.decimal(l_digits: 3, r_digits: 3),
            weight: Faker::Number.decimal(l_digits: 3, r_digits: 3),
            created_at: Faker::Date.backward(days: 1),
            updated_at: Faker::Date.backward(days: 1),
            club_id: club[:id],
            level: Faker::Number.between(from: 1, to: 2)
        })
    }
end
