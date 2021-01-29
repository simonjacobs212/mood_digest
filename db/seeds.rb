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
inspired = Mood.create(name: "Inspired")
melancholy = Mood.create(name: "Melancholy")

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
            img_url: "https://collectionapi.metmuseum.org/api/collection/v1/iiif/192727/481088/main-image"
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
            wiki_link: "https://www.rbrault.blogspot.com"
        )

happy_quote3 = Quote.create(
            mood_id: happy.id,
            author: "Robert Brault",
            body: "Happiness? Simple, really. You don't let short-term concerns ruin your life, and you don't let long-term concerns ruin your day.",
            wiki_link: "https://www.rbrault.blogspot.com"
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
            wiki_link: "http://zadracreative.com/about/"
        )

sad_quote2 = Quote.create(
            mood_id: sad.id,
            author: "Dan Zadra",
            body: "Worry is a misuse of imagination.",
            wiki_link: "https://en.wikipedia.org/wiki/Immanuel_Kant"
        )

sad_quote3 = Quote.create(
            mood_id: sad.id,
            author: "Austin O'Malley",
            body: "Sorrow like rain makes roses and mud.",
            wiki_link: "https://en.wikipedia.org/wiki/Austin_O%27Malley_(author)"
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


################# INSPIRED ##########################################
inspired_rock = Music.create(
            mood_id: inspired.id, 
            title: "We Will Rock You", 
            artist: "Queen", 
            genre: "Rock", 
            url: "https://www.youtube.com/watch?v=-tJYN-eG1zk"
        )

inspired_rap = Music.create(
            mood_id: inspired.id, 
            title: "Lose Yourself", 
            artist: "Eminem", 
            genre: "Rap", 
            url: "https://www.youtube.com/watch?v=_Yhyp-_hX2s"
        )

inspired_classical = Music.create(
            mood_id: inspired.id, 
            title: "Funeral March", 
            artist: "Ptrick Cassidy", 
            genre: "Classical", 
            url: "https://www.youtube.com/watch?v=S3yprPHfKlE&list=PL8N7R6HuqJAy7R3H76hYyte_T_vMq1KlE&index=12"
        )

inspired_art1 = Art.create(
            mood_id: inspired.id,
            title: "Wanderer Above the Sea of Fog(Der Wanderer über dem Nebelmeer)",
            artist: "Caspar David Friedrich",
            genre: "Painting",
            img_url: "https://d1w7fb2mkkr3kw.cloudfront.net/assets/images/book/lrg/9781/0964/9781096495925.jpg",
            year: "1818",
            description: "In the foreground, a young man stands upon a rocky precipice with his back to the viewer. He is wrapped in a dark green overcoat, and grips a walking stick in his right hand. His hair caught in a wind, the wanderer gazes out on a landscape covered in a thick sea of fog. In the middle ground, several other ridges, perhaps not unlike the ones the wanderer himself stands upon, jut out from the mass. Through the wreaths of fog, forests of trees can be perceived atop these escarpments. In the far distance, faded mountains rise in the left, gently leveling off into lowland plains in the right. Beyond here, the pervading fog stretches out indefinitely, eventually commingling with the horizon and becoming indistinguishable from the cloud-filled sky."
        )

inspired_art2 = Art.create(
            mood_id: inspired.id,
            title: "Fearless Girl",
            artist: "Kristen Vispal",
            genre: "Statue",
            img_url: "https://content.fortune.com/wp-content/uploads/2017/03/wall-street-bull-girl-petition.jpg",
            year: "2017",
            description: 'Fearless Girl is meant to "send a message" about workplace gender diversity and encourage companies to recruit women to their boards. The plaque below the statue stated: "Know the power of women in leadership. SHE makes a difference," with SHE referring to both the gender of the subject and the funds NASDAQ ticker symbol.'
        )

inspired_art3 = Art.create(
            mood_id: inspired.id,
            title: "V J Day Kiss",
            artist: "Victor Jorgensen",
            genre: "Photograph",
            img_url: "https://webneel.com/daily/sites/default/files/images/daily/06-2013/31-inspiring-photograph.jpg",
            year: "1945",
            description: "New York City celebrating the surrender of Japan. They threw anything and kissed anybody in Times Square." 
        )

inspired_quote1 = Quote.create(
            mood_id: inspired.id,
            author: "Walt Disney",
            body: "The Best Way To Get Started Is To Quit Talking And Begin Doing.",
            wiki_link: "https://en.wikipedia.org/wiki/Walt_Disney"
        )

inspired_quote2 = Quote.create(
            mood_id: inspired.id,
            author: "Miyamoto Mushashi",
            body: "There is nothing outside of yourself that can ever enable you to get better, stronger, richer, quicker, or smarter. Everything is within. Everything exists. Seek nothing outside of yourself.",
            wiki_link: "https://en.wikipedia.org/wiki/Miyamoto_Musashi"
        )

inspired_quote3 = Quote.create(
            mood_id: inspired.id,
            author: "Helen Keller",
            body: "Security Is Mostly A Superstition. Life Is Either A Daring Adventure Or Nothing.",
            wiki_link: "https://en.wikipedia.org/wiki/Helen_Keller"
        )

############### DISCOURAGED #############################

melancholy_rock = Music.create(
            mood_id: melancholy.id, 
            title: "Adam's Song", 
            artist: "Blink-182", 
            genre: "Rock", 
            url: "https://www.youtube.com/watch?v=2MRdtXWcgIw"
        )

melancholy_rap = Music.create(
            mood_id: melancholy.id, 
            title: "Mockingbird", 
            artist: "Eminem", 
            genre: "Rap", 
            url: "https://www.youtube.com/watch?v=9kznlAwE-8o"
        )

melancholy_classical = Music.create(
            mood_id: melancholy.id, 
            title: "String Quartet no. 14, 1st movement", 
            artist: "Beethoven", 
            genre: "Classical", 
            url: "https://www.youtube.com/watch?v=zApj5uJvLZQ"
        )

melancholy_art1 = Art.create(
            mood_id: melancholy.id,
            title: "Mary Magdalene as Melancholy",
            artist: "Artemisia Gentileschi",
            genre: "Oil on Canvas",
            img_url: "https://upload.wikimedia.org/wikipedia/commons/b/b0/3415_Mar%C3%ADa_Magdalena_como_melancol%C3%ADa.jpg",
            year: "1622 – 1625",
            description: "Mary Magdalene as Melancholy is a 1622–1625 painting by Artemisia Gentileschi, showing Mary Magdalene as a personification of Melancholia. It is now in the Museo Soumaya in Mexico City."
        )

melancholy_art2 = Art.create(
            mood_id: melancholy.id,
            title: "Shades of Melancholy",
            artist: "Eric Lacombe",
            genre: "Painting",
            img_url: "https://i.pinimg.com/564x/9a/0e/99/9a0e99204698fa681e221078e1895303.jpg",
            year: "2014",
            description: "The art of Eric Lacombe delves into those deep dark recesses of the mind that we all possess but few acknowledge. His Paintings explore the darker themes of the human psyche. A melancholic undertone permeates all his works and immerses the viewer in a world where the monster of despair lurks in the corners."
        )

melancholy_art3 = Art.create(
            mood_id: melancholy.id,
            title: "Melancholy",
            artist: "Odilon Redon",
            genre: "Painting",
            img_url: "https://www.paintingstar.com/static/gallery/2013/02/20/52fe726442712.jpg?Melancholy+Artwork+by+Odilon+Redon",
            year: "1876",
            description: "Odilon Redon was a French symbolist painter, printmaker, draughtsman and pastellist. Early in his career, both before and after fighting in the Franco-Prussian War, he worked almost exclusively in charcoal and lithography, works referred to as noirs. He started gaining recognition after his drawings were mentioned in the 1884 novel À rebours by Joris-Karl Huysmans. During the 1890s he began working in pastel and oils, which quickly became his favourite medium, abandoning his previous style of noirs completely after 1900. He also developed a keen interest in Hindu and Buddhist religion and culture, which increasingly showed in his work."
        )

melancholy_quote1 = Quote.create(
            mood_id: melancholy.id,
            author: "Ivy Baker Priest",
            body: "The world is round, and the place which may seem like the end may also be only the beginning.",
            wiki_link: "https://en.wikipedia.org/wiki/Ivy_Baker_Priest"
        )

melancholy_quote2 = Quote.create(
            mood_id: melancholy.id,
            author: "Henry Moore",
            body: "I think in terms of the day's resolutions, not the years'.",
            wiki_link: "https://en.wikipedia.org/wiki/Henry_Moore"
        )


melancholy_quote3 = Quote.create(
            mood_id: melancholy.id,
            author: "Louis L'Amour",
            body: "There will be a time when you believe everything is finished. That will be the beginning.",
            wiki_link: "http://www.louislamour.com/"
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
