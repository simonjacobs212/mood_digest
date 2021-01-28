# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
UserMood.destroy_all
Quote.destroy_all
Music.destroy_all
Mood.destroy_all
Art.destroy_all


john = User.create(username: "jsmith", password: "1234", first_name: "John", last_name: "Smith")
ralph = User.create(username: "rschmidt", password: "1234", first_name: "Ralph", last_name: "Schmidt")
chris = User.create(username: "cbrown", password: "1234", first_name: "Chris", last_name: "Brown")


happy = Mood.create(name: "Happy")
sad = Mood.create(name: "Sad")
tired = Mood.create(name: "Tired")

#################### HAPPY ############################
happy_rock = Music.create(
            mood_id: happy.id, 
            title: "This Must be the Place", 
            artist: "Talking Heads", 
            genre: "Rock", 
            url: "https://www.youtube.com/watch?v=fsccjsW8bSY"
        )

happy_rap = Music.create(
            mood_id: happy.id, 
            title: "Antidote", 
            artist: "Travis Scott", 
            genre: "Rap", 
            url: "https://www.youtube.com/watch?v=Qq-n0Hqg4Ik"
        )
happy_classical = Music.create(
            mood_id: happy.id, 
            title: "Eine kleine Nachtmusik in G Major, K. 525: I. Allegro", 
            artist: "Mozart", 
            genre: "Classical", 
            url: "https://www.youtube.com/watch?v=xp6zA499gls"
        )

happy_art1 = Art.create(
            mood_id: happy.id, 
            title: "Diana on a Chase", 
            artist: "Washington Allston", 
            genre: "Painting",
            year: "1805",
            description: "In the early 19th century, American artists joined their British counterparts and embarked on the Grand Tour. Washington Allston traveled to Europe upon his graduation from Harvard in 1800, and completed this large and ambitious work while in Rome in 1805. Loosely modeled on an alpine vista that Allston sketched while traveling from France to Italy, 'Diana on a Chase' is evocative of the classical landscapes of Claude Lorrain and Nicolas Poussin. At right, the Roman goddess of the hunt and her companions wander through the vast mountainous scene.

            Publicly exhibited in Rome, 'Diana on a Chase' received glowing reviews and impressed Allston’s Romantically-minded contemporaries, including poet Samuel Taylor Coleridge. The artist’s pride in the work was short-lived, however: in 1839, Allston disavowed authorship of the painting, claiming that an aggressive cleaning had ruined his original conception.",
            
            img_url: "https://i.pinimg.com/originals/82/ba/f8/82baf8f4195628450f1eaddd18c7eb66.jpg"
        )

happy_art2 = Art.create(
            mood_id: happy.id, 
            title: "Clodion", 
            artist: "Claude Michel", 
            genre: "Sculpture",
            year:  "1790-1800",
            description: "Though never elected to full membership in the Academy, Clodion was one of the most esteemed sculptors of the eighteenth century, and during his first residence in Rome he shared a studio with Jean-Antoine Houdon. Clodion worked frequently with terracotta, or baked clay, a material that was traditionally used by sculptors to explore ideas for larger projects in more expensive materials; it was highly prized by collectors around the middle of the eighteenth century for its sketchy, provisional qualities. Clodion responded to the growing market for terracotta sculpture by producing numerous small-scale works such as these. Toward the end of the century, he favored groups with inverted poses, such as these two figures carrying putti on opposite shoulders and turning in opposite directions, and he embraced the neoclassical style, basing the figures’ drapery and hairstyles on ancient models.",
            img_url: "https://nrs.harvard.edu/urn-3:HUAM:DDC111121_dynmc?width=280"
        )

happy_art3 = Art.create(
            mood_id: happy.id, 
            title: "Lake of Como", 
            artist: "John Cousen", 
            genre: "Engraving",
            year: '1850',
            description: "None",
            img_url: "https://image.invaluable.com/housePhotos/KCM/29/665629/H5976-L199500121.jpg"
        )

happy_quote1 = Quote.create(
            mood_id: happy.id,
            author: "Mark Twain - 1896",
            body: "The best way to cheer yourself up is to try to cheer somebody else up.",
            wiki_link: "https://en.wikipedia.org/wiki/Mark_Twain"
        )

happy_quote2 = Quote.create(
            mood_id: happy.id,
            author: "Robert Brault - 2019",
            body: "I've learned to be happy with what I have, and even if I lost it, I'd still be happy, because (see start of sentence.)",
            wiki_link: "rbrault.blogspot.com"
        )

happy_quote3 = Quote.create(
            mood_id: happy.id,
            author: "Robert Brault",
            body: "Happiness? Simple, really. You don't let short-term concerns ruin your life, and you don't let long-term concerns ruin your day.",
            wiki_link: "rbrault.blogspot.com"
        )

##################### SAD! #########################################
sad_rock = Music.create(
            mood_id: sad.id, 
            title: "Plush", 
            artist: "Stone Temple Pilots", 
            genre: "Rock", 
            url: "https://www.youtube.com/watch?v=tXhmwMdUKfA"
        )
sad_rap = Music.create(
            mood_id: sad.id, 
            title: "Lucid Dreams", 
            artist: "Juice WRLD", 
            genre: "Rap", 
            url: "https://www.youtube.com/watch?v=mzB1VGEGcSU"
        )

sad_classical = Music.create(
            mood_id: sad.id, 
            title: "Moonlight Sonata", 
            artist: "Beethoven", 
            genre: "Classical", 
            url: "https://www.youtube.com/watch?v=4Tr0otuiQuU"
        )
        
sad_art1 = Art.create(
            mood_id: sad.id,
            title: "Dorian Gray",
            artist: "Martin Kline",
            genre: "Painting",
            img_url: "https://nrs.harvard.edu/urn-3:HUAM:78451_dynmc?width=280",
            year: "2001",
            description: "None"
        )

sad_art2 = Art.create(
            mood_id: sad.id,
            title: "Frontispiece for America a Prophecy",
            artist: "William Blake",
            genre: "Print",
            img_url: "https://nrs.harvard.edu/urn-3:HUAM:769430?width=280",
            year: "1793",
            description: "None"
        )

sad_art3 = Art.create(
            mood_id: sad.id,
            title: "Pepper",
            artist: "Edward Weston",
            genre: "Photograph",
            img_url: "https://www.sothebys.com/content/dam/stb/lots/N09/N09130/363N09130_7BMDL.jpg",
            year: "1929",
            description: "None"
        )

sad_quote1 = Quote.create(
            mood_id: sad.id,
            author: "Immanuel Kant",
            body: "Happiness is not an ideal of reason, but of imagination.",
            wiki_link: "https://en.wikipedia.org/wiki/Immanuel_Kant"
        )

sad_quote2 = Quote.create(
            mood_id: sad.id,
            author: "Dan Zadra",
            body: "Worry is a misuse of imagination.",
            wiki_link: "https://en.wikipedia.org/wiki/Immanuel_Kant"
        )

sad_quote3 = Quote.create(
            mood_id: sad.id,
            author: "Chinese proverb",
            body: "Happiness is not an ideal of reason, but of imagination.",
            wiki_link: "https://en.wikiquote.org/wiki/Chinese_proverbs"
        )


############### TIRED #############################

tired_rock = Music.create(
            mood_id: tired.id, 
            title: "I'm So Tired", 
            artist: "Beatles", 
            genre: "Rock", 
            url: "https://www.youtube.com/watch?v=7cqHtGb9WYM"
        )
tired_rap = Music.create(
            mood_id: tired.id, 
            title: "I Don't Get Tired", 
            artist: "Kevin Gates", 
            genre: "Rap", 
            url: "https://www.youtube.com/watch?v=_gB2iWln0ls"
        )
tired_classical = Music.create(
            mood_id: tired.id, 
            title: "Clair de Lune", 
            artist: "Debussy", 
            genre: "Classical", 
            url: "https://www.youtube.com/watch?v=CvFH_6DNRCY"
        )

tired_art1 = Art.create(
            mood_id: tired.id,
            title: "Study of the Head of the Sleeping Saint Ursula, after Carpaccio, in the Academy of Venice",
            artist: "Charles Herbert Moore",
            genre: "Painting",
            img_url: "https://nrs.harvard.edu/urn-3:HUAM:DDC234327_dynmc?width=280",
            year: "1877 - 1878",
            description: "Copy after detail of 'The Legend of Saint Ursula: Saint Ursula's Dream', in the Gallerie dell'Accademia, Venice."
        )

tired_art2 = Art.create(
            mood_id: tired.id,
            title: "The Virgin with the Sleeping Christ Child",
            artist: "Orazio Gentileschi",
            genre: "Painting",
            img_url: "https://nrs.harvard.edu/urn-3:HUAM:49031_dynmc?width=280",
            year: "c. 1610",
            description: "None"
        )

tired_art3 = Art.create(
            mood_id: tired.id,
            title: "The Dream of the Damsel",
            artist: "Fernando Zóbel",
            genre: "Painting",
            img_url: "https://nrs.harvard.edu/urn-3:HUAM:VRS49141_dynmc?width=280",
            year: "1967",
            description: "None"
        )

tired_quote1 = Quote.create(
            mood_id: tired.id,
            author: "Aristotle",
            body: "We give up leisure in order that we may have leisure, just as we go to war in order that we may have peace.",
            wiki_link: "https://en.wikipedia.org/wiki/Aristotle"
        )

tired_quote2 = Quote.create(
            mood_id: tired.id,
            author: "E. Joseph Cossman",
            body: "The best bridge between despair and hope is a good night's sleep.",
            wiki_link: "https://www.latimes.com/archives/la-xpm-2002-dec-19-me-cossman19-story.html"
        )

tired_quote3 = Quote.create(
            mood_id: tired.id,
            author: "Ralph Waldo Emerson",
            body: "Finish each day before you begin the next, and interpose a solid wall of sleep between the two.",
            wiki_link: "https://en.wikipedia.org/wiki/Ralph_Waldo_Emerson"
        )


################## UserMoods ########################
john_sad = UserMood.create(
            user_id: john.id, 
            mood: sad, 
            music: sad_classical, 
            art: sad_art2, 
            quote: sad_quote1
        )      

ralph_happy = UserMood.create(
            user_id: ralph.id, 
            mood: happy, 
            music: happy_rock, 
            art: happy_art1, 
            quote: happy_quote1
        )

ralph_sad = UserMood.create(
            user_id: ralph.id, 
            mood: sad, 
            music: sad_rap, 
            art: sad_art3, 
            quote: sad_quote2
        )

#####################################################


puts "Seeded 🌱🌱🌱🌱🌱🌱🌱🌱🌱"
