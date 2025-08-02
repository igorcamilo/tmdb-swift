import Foundation

extension Data {
  static let upcomingMovies = Data(content.utf8)
}

private let content = #"""
  {
    "dates": {
      "maximum": "2025-08-27",
      "minimum": "2025-08-06"
    },
    "page": 1,
    "results": [
      {
        "adult": false,
        "backdrop_path": "/1RgPyOhN4DRs225BGTlHJqCudII.jpg",
        "genre_ids": [
          16,
          28,
          14,
          53
        ],
        "id": 1311031,
        "original_language": "ja",
        "original_title": "劇場版「鬼滅の刃」無限城編 第一章 猗窩座再来",
        "overview": "As the Demon Slayer Corps members and Hashira engaged in a group strength training program, the Hashira Training, in preparation for the forthcoming battle against the demons, Muzan Kibutsuji appears at the Ubuyashiki Mansion. With the head of the Demon Corps in danger, Tanjiro and the Hashira rush to the headquarters but are plunged into a deep descent to a mysterious space by the hands of Muzan Kibutsuji.  The destination of where Tanjiro and Demon Slayer Corps have fallen is the demons' stronghold – the Infinity Castle. And so, the battleground is set as the final battle between the Demon Slayer Corps and the demons ignites.",
        "popularity": 531.3633,
        "poster_path": "/aFRDH3P7TX61FVGpaLhKr6QiOC1.jpg",
        "release_date": "2025-07-18",
        "title": "Demon Slayer: Kimetsu no Yaiba Infinity Castle",
        "video": false,
        "vote_average": 7.155,
        "vote_count": 55
      },
      {
        "adult": false,
        "backdrop_path": "/7Q2CmqIVJuDAESPPp76rWIiA0AD.jpg",
        "genre_ids": [
          28,
          12,
          18
        ],
        "id": 1011477,
        "original_language": "en",
        "original_title": "Karate Kid: Legends",
        "overview": "After a family tragedy, kung fu prodigy Li Fong is uprooted from his home in Beijing and forced to move to New York City with his mother. When a new friend needs his help, Li enters a karate competition – but his skills alone aren't enough. Li's kung fu teacher Mr. Han enlists original Karate Kid Daniel LaRusso for help, and Li learns a new way to fight, merging their two styles into one for the ultimate martial arts showdown.",
        "popularity": 233.4339,
        "poster_path": "/AEgggzRr1vZCLY86MAp93li43z.jpg",
        "release_date": "2025-05-08",
        "title": "Karate Kid: Legends",
        "video": false,
        "vote_average": 7.17,
        "vote_count": 581
      },
      {
        "adult": false,
        "backdrop_path": "/fQOV47FHTJdaSuSUNlzP3zXUZWE.jpg",
        "genre_ids": [
          878,
          12,
          28
        ],
        "id": 1234821,
        "original_language": "en",
        "original_title": "Jurassic World Rebirth",
        "overview": "Five years after the events of Jurassic World Dominion, covert operations expert Zora Bennett is contracted to lead a skilled team on a top-secret mission to secure genetic material from the world's three most massive dinosaurs. When Zora's operation intersects with a civilian family whose boating expedition was capsized, they all find themselves stranded on an island where they come face-to-face with a sinister, shocking discovery that's been hidden from the world for decades.",
        "popularity": 222.9024,
        "poster_path": "/1RICxzeoNCAO5NpcRMIgg1XT6fm.jpg",
        "release_date": "2025-07-01",
        "title": "Jurassic World Rebirth",
        "video": false,
        "vote_average": 6.334,
        "vote_count": 866
      },
      {
        "adult": false,
        "backdrop_path": "/oPgXVSdGR9dGwbmvIToOCMmsdc2.jpg",
        "genre_ids": [
          28,
          53,
          80
        ],
        "id": 541671,
        "original_language": "en",
        "original_title": "Ballerina",
        "overview": "Taking place during the events of John Wick: Chapter 3 – Parabellum, Eve Macarro begins her training in the assassin traditions of the Ruska Roma.",
        "popularity": 193.5458,
        "poster_path": "/2VUmvqsHb6cEtdfscEA6fqqVzLg.jpg",
        "release_date": "2025-06-04",
        "title": "Ballerina",
        "video": false,
        "vote_average": 7.462,
        "vote_count": 1222
      },
      {
        "adult": false,
        "backdrop_path": "/eNSUknQqzTXWE5EeT8ZnVccEPR0.jpg",
        "genre_ids": [
          27,
          53
        ],
        "id": 1285965,
        "original_language": "en",
        "original_title": "Dangerous Animals",
        "overview": "A savvy and free-spirited surfer is abducted by a shark-obsessed serial killer. Held captive on his boat, she must figure out how to escape before he carries out a ritualistic feeding to the sharks below.",
        "popularity": 131.8372,
        "poster_path": "/oQJ1PKLIE2gF5cr3xwjLCvv4jcU.jpg",
        "release_date": "2025-06-05",
        "title": "Dangerous Animals",
        "video": false,
        "vote_average": 6.5,
        "vote_count": 114
      },
      {
        "adult": false,
        "backdrop_path": "/5esDYWV0NoFwqPa1iC0g9akqZo9.jpg",
        "genre_ids": [
          27
        ],
        "id": 1151031,
        "original_language": "en",
        "original_title": "Bring Her Back",
        "overview": "Following the death of their father, a brother and sister are introduced to their new sibling by their foster mother, only to learn that she has a terrifying secret.",
        "popularity": 85.9993,
        "poster_path": "/tObSf1VzzHt9xB0csanFtb3DRjf.jpg",
        "release_date": "2025-05-28",
        "title": "Bring Her Back",
        "video": false,
        "vote_average": 7.43,
        "vote_count": 392
      },
      {
        "adult": false,
        "backdrop_path": "/lqwwGkwJHtz9QgKtz4zeY19YgDg.jpg",
        "genre_ids": [
          10749,
          18
        ],
        "id": 1136867,
        "original_language": "en",
        "original_title": "Materialists",
        "overview": "A young, ambitious New York City matchmaker finds herself torn between the perfect match and her imperfect ex.",
        "popularity": 89.8543,
        "poster_path": "/eDo0pNruy0Qgj6BdTyHIR4cxHY8.jpg",
        "release_date": "2025-06-12",
        "title": "Materialists",
        "video": false,
        "vote_average": 6.8,
        "vote_count": 240
      },
      {
        "adult": false,
        "backdrop_path": "/jvpkBenB6hv19WWYVlaiow8zklq.jpg",
        "genre_ids": [
          10751,
          35,
          80,
          12,
          16
        ],
        "id": 1175942,
        "original_language": "en",
        "original_title": "The Bad Guys 2",
        "overview": "The now-reformed Bad Guys are trying (very, very hard) to be good, but instead find themselves hijacked into a high-stakes, globe-trotting heist, masterminded by a new team of criminals they never saw coming: The Bad Girls.",
        "popularity": 99.2808,
        "poster_path": "/26oSPnq0ct59l07QOXZKyzsiRtN.jpg",
        "release_date": "2025-07-24",
        "title": "The Bad Guys 2",
        "video": false,
        "vote_average": 7.3,
        "vote_count": 22
      },
      {
        "adult": false,
        "backdrop_path": "/fUoHnP40Mpuo14jgAOMJMPXSVfG.jpg",
        "genre_ids": [
          35,
          80
        ],
        "id": 1035259,
        "original_language": "en",
        "original_title": "The Naked Gun",
        "overview": "Only one man has the particular set of skills... to lead Police Squad and save the world: Lt. Frank Drebin Jr.",
        "popularity": 76.5874,
        "poster_path": "/aq0JMbmSfPwG8JvAzExJPrBHqmG.jpg",
        "release_date": "2025-07-30",
        "title": "The Naked Gun",
        "video": false,
        "vote_average": 6.8,
        "vote_count": 40
      },
      {
        "adult": false,
        "backdrop_path": "/yAqL0makiGke5yYiVWpmBDSKIVP.jpg",
        "genre_ids": [
          27,
          18,
          53
        ],
        "id": 1278950,
        "original_language": "en",
        "original_title": "The Ritual",
        "overview": "Two priests, one in crisis with his faith and the other confronting a turbulent past, must overcome their differences to perform a risky exorcism.",
        "popularity": 67.4574,
        "poster_path": "/ktqPs5QyuF8SpKnipvVHb3fwD8d.jpg",
        "release_date": "2025-04-18",
        "title": "The Ritual",
        "video": false,
        "vote_average": 5.8,
        "vote_count": 124
      },
      {
        "adult": false,
        "backdrop_path": "/lecBUG6Hsw7pYjTNAPBUgouDfjW.jpg",
        "genre_ids": [
          18,
          14
        ],
        "id": 842924,
        "original_language": "en",
        "original_title": "The Life of Chuck",
        "overview": "In this extraordinary story of an ordinary man, Charles 'Chuck' Krantz experiences the wonder of love, the heartbreak of loss, and the multitudes contained in all of us.",
        "popularity": 62.6564,
        "poster_path": "/oumprkO9bThExP8NwxBIBnvBu2v.jpg",
        "release_date": "2025-06-05",
        "title": "The Life of Chuck",
        "video": false,
        "vote_average": 7.325,
        "vote_count": 160
      },
      {
        "adult": false,
        "backdrop_path": "/yiyy3ZtyuGjNs81kVV3cC4mTWgA.jpg",
        "genre_ids": [
          27,
          9648,
          53
        ],
        "id": 713364,
        "original_language": "en",
        "original_title": "Clown in a Cornfield",
        "overview": "Quinn and her father have just moved to the quiet town of Kettle Springs hoping for a fresh start. Instead, she discovers a fractured community that has fallen on hard times after the treasured Baypen Corn Syrup Factory burned down. As the locals bicker amongst themselves and tensions boil over, a sinister, grinning figure emerges from the cornfields to cleanse the town of its burdens, one bloody victim at a time.",
        "popularity": 42.4923,
        "poster_path": "/bghFYMUMEKK6GyTHRA7XVC8uWn6.jpg",
        "release_date": "2025-05-08",
        "title": "Clown in a Cornfield",
        "video": false,
        "vote_average": 6.3,
        "vote_count": 203
      },
      {
        "adult": false,
        "backdrop_path": "/zxi6WQPVc0uQAG5TtLsKvxYHApC.jpg",
        "genre_ids": [
          16,
          14,
          12,
          28
        ],
        "id": 980477,
        "original_language": "zh",
        "original_title": "哪吒之魔童闹海",
        "overview": "Following the Tribulation, although the souls of Ne Zha and Ao Bing were preserved, their physical bodies will soon be destroyed. Tai Yi Zhen Ren plans to use the Seven Colored Lotus to reshape their physical forms, but encounters numerous difficulties. What will become of Ne Zha and Ao Bing?",
        "popularity": 104.1626,
        "poster_path": "/5lUmWTGkEcYnXujixXn31o9q2T0.jpg",
        "release_date": "2025-01-29",
        "title": "Ne Zha 2",
        "video": false,
        "vote_average": 8.1,
        "vote_count": 196
      },
      {
        "adult": false,
        "backdrop_path": "/9whEVuKte4Qi0LI4TzPf7glinJW.jpg",
        "genre_ids": [
          16,
          10751,
          14
        ],
        "id": 936108,
        "original_language": "en",
        "original_title": "Smurfs",
        "overview": "When Papa Smurf is mysteriously taken by evil wizards, Razamel and Gargamel, Smurfette leads the Smurfs on a mission into the real world to save him. With the help of new friends, the Smurfs must discover what defines their destiny to save the universe.",
        "popularity": 34.7101,
        "poster_path": "/8o6lkhL32xQJeB52IIG1us5BVey.jpg",
        "release_date": "2025-07-05",
        "title": "Smurfs",
        "video": false,
        "vote_average": 6.061,
        "vote_count": 49
      },
      {
        "adult": false,
        "backdrop_path": "/lBsbWXGn9maPKGhN3fozTU3BH0r.jpg",
        "genre_ids": [
          28,
          18,
          53
        ],
        "id": 757725,
        "original_language": "en",
        "original_title": "Shadow Force",
        "overview": "Kyrah and Isaac were once the leaders of a multinational special forces group called Shadow Force. They broke the rules by falling in love, and in order to protect their son, they go underground. With a large bounty on their heads, and the vengeful Shadow Force hot on their trail, one family's fight becomes all-out war.",
        "popularity": 34.3744,
        "poster_path": "/9LCpHFXZgkqp2AWiYq0mGbfZauk.jpg",
        "release_date": "2025-05-01",
        "title": "Shadow Force",
        "video": false,
        "vote_average": 6.071,
        "vote_count": 133
      },
      {
        "adult": false,
        "backdrop_path": "/3NCYVzeqLUKMhf5TaDlHol7BoTn.jpg",
        "genre_ids": [
          27
        ],
        "id": 1242011,
        "original_language": "en",
        "original_title": "Together",
        "overview": "With a move to the countryside already testing the limits of a couple's relationship, a supernatural encounter begins an extreme transformation of their love, their lives, and their flesh.",
        "popularity": 38.2477,
        "poster_path": "/wEgfIrmSUibiXjp9qWLL35g1nNr.jpg",
        "release_date": "2025-07-28",
        "title": "Together",
        "video": false,
        "vote_average": 6.361,
        "vote_count": 18
      },
      {
        "adult": false,
        "backdrop_path": "/eA4S3tlpYfEA7LTo3GOwYWzUG4z.jpg",
        "genre_ids": [
          10751,
          35,
          12,
          16
        ],
        "id": 1084153,
        "original_language": "en",
        "original_title": "Sneaks",
        "overview": "Ty, a misguided, one-of-a-kind designer sneaker, doesn’t know life outside the comforts of his velvet-lined shoebox. After his sister is stolen by a shady collector, Ty must venture into New York City to find and rescue her. In his adventure, Ty meets a ragtag group of footwear friends from all walks of life who help him find the courage to step outside of his shoebox and find his sole-mate.",
        "popularity": 29.6229,
        "poster_path": "/3SipvmtH9VOyLmII9JLs34qFfil.jpg",
        "release_date": "2025-04-17",
        "title": "Sneaks",
        "video": false,
        "vote_average": 5.9,
        "vote_count": 23
      },
      {
        "adult": false,
        "backdrop_path": "/eQV9rSQ6S1ja4lGTwHTnQuVhoG.jpg",
        "genre_ids": [
          27,
          35,
          14,
          18
        ],
        "id": 1284120,
        "original_language": "no",
        "original_title": "Den stygge stesøsteren",
        "overview": "In a fairy-tale kingdom where beauty is a brutal business, Elvira battles to compete with her incredibly beautiful stepsister, and she will go to any length to catch the prince’s eye.",
        "popularity": 30.802,
        "poster_path": "/crX9rSg9EohybhkEe8iTQUCe55y.jpg",
        "release_date": "2025-03-07",
        "title": "The Ugly Stepsister",
        "video": false,
        "vote_average": 7.3,
        "vote_count": 286
      },
      {
        "adult": false,
        "backdrop_path": "/vMGiCxW6biqLqdH77HtPbFDab0U.jpg",
        "genre_ids": [
          27,
          9648
        ],
        "id": 1078605,
        "original_language": "en",
        "original_title": "Weapons",
        "overview": "When all but one child from the same class mysteriously vanish on the same night at exactly the same time, a community is left questioning who or what is behind their disappearance.",
        "popularity": 32.8524,
        "poster_path": "/cpf7vsRZ0MYRQcnLWteD5jK9ymT.jpg",
        "release_date": "2025-08-06",
        "title": "Weapons",
        "video": false,
        "vote_average": 10,
        "vote_count": 1
      },
      {
        "adult": false,
        "backdrop_path": "/hJXsJkQC8F3bgUTfsD402uj2Ewf.jpg",
        "genre_ids": [
          16,
          12,
          10751
        ],
        "id": 666154,
        "original_language": "en",
        "original_title": "Kayara",
        "overview": "A courageous and athletic teenager, Kayara dreams that she is destined to be the first female to break into the league of Chasquis - the official messengers of the Incan empire. As she learns what it takes to be a Chasqui along with its challenges, she tackles every mission she gets and discovers the ancient stories of her land and her people.",
        "popularity": 29.1974,
        "poster_path": "/tpZdjnoJ6Z3NsSxI6HjAIggrcEv.jpg",
        "release_date": "2025-01-02",
        "title": "Kayara",
        "video": false,
        "vote_average": 7.6,
        "vote_count": 94
      }
    ],
    "total_pages": 53,
    "total_results": 1045
  }
  """#
