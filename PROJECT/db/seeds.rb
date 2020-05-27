# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Cult.create(
    [{
        name: "Protoss Fanbois",
        slogan: "You must construct additional Pylons",
        building_name: "Pylon"
    },
    {
        name: "Craft Beer",
        slogan: "Give me that sweet sweet hoppy flavour",
        building_name: "Pub"
    },
    {
        name: "Cult of Khorne",
        slogan: "BLOOD FOR THE BLOOD GOD!",
        building_name: "Death Pit"
    }
]
)

Location.create(
    [{
        name: "London",
        country: "UK"
    },
    {
        name: "New York",
        country: "USA"
    }

]
)

10.times do 
    
    Location.create(
         name: Faker::Nation.capital_city,
         country: Faker::Address.country
    )
end


Member.create(
    [{
        name: "Jamie Symonds-Tayler",
        date_of_birth: Date.parse("1990-06-18"),
        username: "jamie",
        password: "jamie"
    },
    {
        name: "Adao Natalino",
        date_of_birth: Date.parse("1989-08-06"),
        username: "adao",
        password: "adao"
    },

]
)


30.times do
    name = Faker::Name.name
    Member.create(
        {
            name: name,
            date_of_birth: Date.today-3650-rand(10000),
            username: name.split[0],
            password: name.split[0]
        }
    )
end





10.times do 
    Cult.create(
        name: Faker::Games::WarhammerFantasy.faction,
        slogan: Faker::Games::WarhammerFantasy.quote,
        building_name: ["Church", "Office", "Park", "Temple", "Pub", "Station"].sample
    )
end


50.times do 
    loc = Location.all.sample
    cult = Cult.all.sample
    Building.create(
         name: "#{loc.name} #{cult.building_name}",
         location: loc,
         cult: cult
    )
end



10.times do 
    member = Member.all.sample
    cult = Cult.all.sample
    Oath.create(
        member: member, 
        cult: cult
    )

end

50.times do 
    building = Building.all.sample
    Meeting.create(
        building: building,
        date: Date.today-rand(100)
    )
    
end


40.times do
    cult = Cult.all.sample
    meeting = cult.meetings.sample
    member = cult.members.sample

    Attendance.create(
        member: member,
        meeting: meeting
    )
end

puts "Seed Complete"