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
        picture: "https://www.google.com/url?sa=i&url=https%3A%2F%2Flondonist.com%2Flondon%2Ftransport%2Ftfl-bus-hopper-fare-70-minutes&psig=AOvVaw2uMydDiEMAemEZyxW3_bFX&ust=1590747813231000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCLj74tSr1ukCFQAAAAAdAAAAABAD"
    },
    {
        name: "New York",
        picture: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.thecrazytourist.com%2F15-best-statue-of-liberty-tours%2F&psig=AOvVaw1ToT93Y6dY9Hhm7IWE7ppL&ust=1590747937628000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCLCe7YCs1ukCFQAAAAAdAAAAABAD"
    },
    {
        name: "Rio de Janeiro",
        picture: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.silversea.com%2Fcruise-to%2Frio-de-janeiro.html&psig=AOvVaw2-xF5V2pcyQ6GOvlBVqmgk&ust=1590748041522000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCPj257us1ukCFQAAAAAdAAAAABAD"
    },
    {
        name: "San Franciso",
        picture: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.independent.co.uk%2Ftravel%2Fhotels%2Fsan-francisco-best-hotels-value-views-budget-luxury-deals-a9107406.html&psig=AOvVaw1jFZ7ECbznauo-Y29jkWAH&ust=1590748285455000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCLiGic-t1ukCFQAAAAAdAAAAABAE"
    },
    {
        name: "Amsterdam",
        picture: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.telegraph.co.uk%2Ftravel%2Fdestinations%2Feurope%2Fnetherlands%2Famsterdam%2Farticles%2Fthings-you-probably-didnt-know-about-amsterdam%2F&psig=AOvVaw2YKHqJNwgeU2YfRlovYRBm&ust=1590748411699000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCIDnk-it1ukCFQAAAAAdAAAAABAD"
    },
    {
        name: "Paris",
        picture: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.fodors.com%2Fworld%2Feurope%2Ffrance%2Fparis%2Fexperiences%2Fnews%2Fphotos%2F20-ultimate-things-to-do-in-paris&psig=AOvVaw2utKqO0uBbsq65IeyXwG51&ust=1590748449645000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCODqj52u1ukCFQAAAAAdAAAAABAD"
    {
        name: "Xangai",
        picture: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.startse.com%2Fnoticia%2Fecossistema%2Fxangai-hub-mundial-fintechs&psig=AOvVaw3DG7I7nMVIgO7FqVMlC7Fy&ust=1590748589742000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCPD_xbuu1ukCFQAAAAAdAAAAABAD"
    },
    {
        name: "Berlin",
        picture: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.ef.com%2Fwwen%2Fpg%2Fgermany%2Fberlin%2F&psig=AOvVaw2XTFjF_O4nrDaqe01MTiX0&ust=1590748640804000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCKil8OOu1ukCFQAAAAAdAAAAABAD"
    },
    {
        name: "Bangkok",
        picture: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.agoda.com%2Fen-gb%2Fcity%2Fbangkok-th.html&psig=AOvVaw1ehtXilqVWCPeOJs6FT6vT&ust=1590748777959000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCOi_3Zev1ukCFQAAAAAdAAAAABAD"
    },
    {
        name: "Abu Dhabi",
        picture: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fenglish.alarabiya.net%2Fen%2Fcoronavirus%2F2020%2F05%2F24%2FCoronavirus-Abu-Dhabi-issues-rules-for-hotels-beaches-bars-to-reopen-&psig=AOvVaw2k21UmO59RA3V8mELS_x0t&ust=1590748888627000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCKC0rMev1ukCFQAAAAAdAAAAABAD"
    }
]
)

# 10.times do 
#     Location.create(
#          name: Faker::Nation.capital_city,
#          country: Faker::Address.country
#     )
# end


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