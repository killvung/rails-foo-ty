require 'faker'
require 'date'
require 'open-uri'

clubs = (1...Faker::Number.number(digits: 1)).map{|e| Club.create({
    name:Faker::Team.creature,
    created_at:Faker::Date.backward(days: 2),
    updated_at:Faker::Date.backward(days: 1),
    nickname: Faker::FunnyName.name,
    home_venue:Faker::Team.state,
    state:Faker::Team.state,
    symbol: open('https://cnet3.cbsistatic.com/img/Yt768C55hXNi2eGSB9qOv-e7SQg=/2011/03/16/c7675aa8-fdba-11e2-8c7c-d4ae52e62bcc/Chrome-logo-2011-03-16.jpg','rb').read,
    establish:Faker::Number.between(from: 1900, to: 2020),
    club_url:"https://www.google.com",
    members:Faker::Number.number(digits: 5)
})}

clubs.each do |club| 
    (1...Faker::Number.number(digits: 1)).map{|e|
        Player.create({
            name: Faker::FunnyName.name,
            date_of_birth: Faker::Date.backward(days: 2),
            height: Faker::Number.decimal(l_digits: 3, r_digits: 3),
            weight: Faker::Number.decimal(l_digits: 3, r_digits: 3),
            created_at: Faker::Date.backward(days: 1),
            updated_at: Faker::Date.backward(days: 1),
            avatar_small: open('https://archive.org/download/mx-player-logo-450x450/mx-player-logo-450x450.png','rb').read,
            avatar: open('https://logodix.com/logo/1330714.png','rb').read,
            club_id: club[:id],
            debut: Faker::Number.between(from: 1900, to: 2020),
            games: Faker::Number.number(digits: 2),
            goals: Faker::Number.number(digits: 2),
            fantasy_points_total: Faker::Number.number(digits: 4),
            level: Faker::Number.between(from: 1, to: 2)
        })
    }
end
