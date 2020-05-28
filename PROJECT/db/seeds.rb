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

puts "CUlts Created"

Location.create([
    {
        name: "London",
        picture: "https://assets.londonist.com/uploads/2019/10/i875/bus_london.jpg"
    },
    {
        name: "New York",
        picture: "https://cdn.thecrazytourist.com/wp-content/uploads/2019/01/ccimage-shutterstock_378601342.jpg"
    },
    {
        name: "Rio de Janeiro",
        picture: "https://silversea-h.assetsadobe2.com/is/image/content/dam/silversea-com/ports/r/rio-de-janeiro/silversea-south-america-cruises-rio-de-janeiro-brazil.jpg?hei=390&wid=930&fit=crop"
    },
    {
        name: "San Francisco",
        picture: "https://static.independent.co.uk/s3fs-public/thumbnails/image/2019/09/16/15/san-francisco.jpg?w968h681"
    },
    {
        name: "Amsterdam",
        picture: "https://www.holland.com/upload_mm/d/0/7/69550_fullimage_fietsen-amsterdam_1360x.jpg"
    },
    {
        name: "Paris",
        picture: "https://www.jetsetter.com/uploads/sites/7/2019/04/GettyImages-924894324-1380x690.jpg"
    },
    {
        name: "Shanghai",
        picture: "https://startse-wordpress.s3.us-east-2.amazonaws.com/2020/01/xangai.jpg"
    },
    {
        name: "Berlin",
        picture: "https://www.visitberlin.de/system/files/styles/visitberlin_teaser_block_landscape_visitberlin_mobile_1x/private/image/iStock_000074120341_Doubleuncoated_DL_PPT_1.jpg?h=a66ba266&itok=ffbLnC30"
    },
    {
        name: "Bangkok",
        picture: "https://a.cdn-hotels.com/gdcs/production172/d459/3af9262b-3d8b-40c6-b61d-e37ae1aa90aa.jpg"
    },
    {
        name: "Abu Dhabi",
        picture: "https://vid.alarabiya.net/images/2020/05/24/068bdeb6-3511-4cc4-b69d-94ceefb7d897/068bdeb6-3511-4cc4-b69d-94ceefb7d897_16x9_600x338.png"
    }
    ]
)

puts "Created Locations"

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
puts "Created Us"


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

puts "Created members"

#cults pictures: 
# Protoss:  https://www.pcgamesn.com/wp-content/uploads/legacy/Legacy_of_the_Void.jpg
# Craft Beer: https://www.lacerveteca.com/wp-content/uploads/2018/11/Craft_Beer-2000x1125.jpg
# Cult of Khorne: https://1d4chan.org/images/thumb/1/1a/Cultist_of_tzeentch_by_ilacha-d7hytyz.jpg/450px-Cultist_of_tzeentch_by_ilacha-d7hytyz.jpg
# Tomb Kings: https://steamcdn-a.akamaihd.net/steam/apps/617870/ss_a8fc43680cb2f2cf2624a1adb740fe057a7a9461.1920x1080.jpg?t=1571755476
# Dwarfs: https://pluspng.com/img-png/7-dwarfs-png-kingdom-hearts-dwarfs-png-1600-667-quotes-posts-pinterest-dwarf-snow-white-and-snow-1600.png
# Kislev: https://vignette.wikia.nocookie.net/warhammerfb/images/f/ff/Warhammer_Kislev_Winged_Lancers.png/revision/latest?cb=20180825093027
# Lizardmen: https://img00.deviantart.net/7ed9/i/2010/114/e/b/temple_guard_by_daarken.jpg
# Dark Elves: https://lh3.googleusercontent.com/proxy/gqN5tEAur_-QUTuumAIo-uTfOuCaXvFI6p8CCUF3FQGGd5ObiE7paWXz4Y75T8q-iU_RSjomn_jeebSqSn2w6zFAn_iGLhPMdiF715l2lLg2or8rG3Oc3tfVB8hIdzicQPmrmNy7xUTjzfCcbsroew0CbkZUNcJiTSy_XptZfozu38e6SfnsjnneVw
# Ogre Kingdoms: https://cdna.artstation.com/p/assets/images/images/006/096/418/large/michael-tenebrae-ogre-kingdoms-2-smaller.jpg?1496043875
# Chaos Dwarfs: https://vignette.wikia.nocookie.net/warhammerfb/images/4/46/Hellcancrew_gdesign_01.jpg/revision/latest?cb=20190530033148




10.times do 
    Cult.create(
        name: Faker::Games::WarhammerFantasy.faction,
        slogan: Faker::Games::WarhammerFantasy.quote,
        building_name: ["Church", "Office", "Park", "Temple", "Pub", "Station"].sample
    )
end

puts "Cults created"

50.times do 
    loc = Location.all.sample
    cult = Cult.all.sample
    Building.create(
         name: "#{loc.name} #{cult.building_name}",
         location: loc,
         cult: cult
    )
end

puts "Created buildings"

20.times do 
    member = Member.all.sample
    cult = Cult.all.sample
    Oath.create(
        member: member, 
        cult: cult
    )

end

puts "created Oaths"

50.times do 
    building = Building.all.sample
    Meeting.create(
        building: building,
        date: Date.today-rand(100)
    )
    
end

puts "Meetings created"

40.times do
    cult = Cult.all.sample
    while cult.members.any? == false do
        cult = Cult.all.sample
    end
    meeting = cult.meetings.sample
    member = cult.members.sample

    Attendance.create(
        member: member,
        meeting: meeting
    )
end

puts "Created Attendances"

puts "Seed Complete"