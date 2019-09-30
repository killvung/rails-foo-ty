require 'date'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Club.create([{name: 'Club 1'}, {name: 'Club 2'}])
Player.create([
    {
        name:'Player 1 from Club 1',
        date_of_birth: Date.new(),
        height: rand(),
        weight: rand(),
        club_id: '1'
    },
    {
        name:'Player 1 from Club 2',
        date_of_birth: Date.new(),
        height: rand(),
        weight: rand(),
        club_id: '2'
    },
    {
        name:'Player 2 from Club 1',
        date_of_birth: Date.new(),
        height: rand(),
        weight: rand(),
        club_id: '1'
    },
    {
        name:'Player 2 from Club 2',
        date_of_birth: Date.new(),
        height: rand(),
        weight: rand(),
        club_id: '2'
    }
])
