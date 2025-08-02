import Foundation

extension Data {
  static let topRatedTVShows = Data(content.utf8)
}

private let content = #"""
  {
    "page": 1,
    "results": [
      {
        "adult": false,
        "backdrop_path": "/tsRy63Mu5cu8etL1X7ZLyf7UP1M.jpg",
        "genre_ids": [
          18,
          80
        ],
        "id": 1396,
        "origin_country": [
          "US"
        ],
        "original_language": "en",
        "original_name": "Breaking Bad",
        "overview": "Walter White, a New Mexico chemistry teacher, is diagnosed with Stage III cancer and given a prognosis of only two years left to live. He becomes filled with a sense of fearlessness and an unrelenting desire to secure his family's financial future at any cost as he enters the dangerous world of drugs and crime.",
        "popularity": 179.5577,
        "poster_path": "/ztkUQFLlC19CCMYHW9o1zWhJRNq.jpg",
        "first_air_date": "2008-01-20",
        "name": "Breaking Bad",
        "vote_average": 8.926,
        "vote_count": 15864
      },
      {
        "adult": false,
        "backdrop_path": "/q8eejQcg1bAqImEV8jh8RtBD4uH.jpg",
        "genre_ids": [
          16,
          10765,
          18,
          10759
        ],
        "id": 94605,
        "origin_country": [
          "US"
        ],
        "original_language": "en",
        "original_name": "Arcane",
        "overview": "Amid the stark discord of twin cities Piltover and Zaun, two sisters fight on rival sides of a war between magic technologies and clashing convictions.",
        "popularity": 52.8927,
        "poster_path": "/fqldf2t8ztc9aiwn3k6mlX3tvRT.jpg",
        "first_air_date": "2021-11-06",
        "name": "Arcane",
        "vote_average": 8.765,
        "vote_count": 5263
      },
      {
        "adult": false,
        "backdrop_path": "/96RT2A47UdzWlUfvIERFyBsLhL2.jpg",
        "genre_ids": [
          16,
          10759,
          18,
          10765
        ],
        "id": 209867,
        "origin_country": [
          "JP"
        ],
        "original_language": "ja",
        "original_name": "葬送のフリーレン",
        "overview": "Decades after her party defeated the Demon King, an old friend's funeral launches the elf wizard Frieren on a journey of self-discovery.",
        "popularity": 68.9904,
        "poster_path": "/dqZENchTd7lp5zht7BdlqM7RBhD.jpg",
        "first_air_date": "2023-09-29",
        "name": "Frieren: Beyond Journey's End",
        "vote_average": 8.8,
        "vote_count": 479
      },
      {
        "adult": false,
        "backdrop_path": "/5yk3QwnQxzwKfhU1tlDkV2PSIBz.jpg",
        "genre_ids": [
          18
        ],
        "id": 219246,
        "origin_country": [
          "KR"
        ],
        "original_language": "ko",
        "original_name": "폭싹 속았수다",
        "overview": "In Jeju, a spirited girl and a steadfast boy's island story blossoms into a lifelong tale of setbacks and triumphs — proving love endures across time.",
        "popularity": 55.8711,
        "poster_path": "/q29q6AByug53pnylCytwLA7m6AY.jpg",
        "first_air_date": "2025-03-07",
        "name": "When Life Gives You Tangerines",
        "vote_average": 8.756,
        "vote_count": 362
      },
      {
        "adult": false,
        "backdrop_path": "/kU98MbVVgi72wzceyrEbClZmMFe.jpg",
        "genre_ids": [
          16,
          10759,
          10765
        ],
        "id": 246,
        "origin_country": [
          "US"
        ],
        "original_language": "en",
        "original_name": "Avatar: The Last Airbender",
        "overview": "In a war-torn world of elemental magic, a young boy reawakens to undertake a dangerous mystic quest to fulfill his destiny as the Avatar, and bring peace to the world.",
        "popularity": 39.9492,
        "poster_path": "/yaGt4GIutpbXHsv48tWceWg6s56.jpg",
        "first_air_date": "2005-02-21",
        "name": "Avatar: The Last Airbender",
        "vote_average": 8.754,
        "vote_count": 4423
      },
      {
        "adult": false,
        "backdrop_path": "/2rmK7mnchw9Xr3XdiTFSxTTLXqv.jpg",
        "genre_ids": [
          10759,
          35,
          16
        ],
        "id": 37854,
        "origin_country": [
          "JP"
        ],
        "original_language": "ja",
        "original_name": "ワンピース",
        "overview": "Years ago, the fearsome Pirate King, Gol D. Roger was executed leaving a huge pile of treasure and the famous \"One Piece\" behind. Whoever claims the \"One Piece\" will be named the new King of the Pirates.\n\nMonkey D. Luffy, a boy who consumed a \"Devil Fruit,\" decides to follow in the footsteps of his idol, the pirate Shanks, and find the One Piece. It helps, of course, that his body has the properties of rubber and that he's surrounded by a bevy of skilled fighters and thieves to help him along the way.\n\nLuffy will do anything to get the One Piece and become King of the Pirates!",
        "popularity": 71.377,
        "poster_path": "/cMD9Ygz11zjJzAovURpO75Qg7rT.jpg",
        "first_air_date": "1999-10-20",
        "name": "One Piece",
        "vote_average": 8.724,
        "vote_count": 4950
      },
      {
        "adult": false,
        "backdrop_path": "/tuCU2yVRM2iZxFkpqlPUyvd6tSu.jpg",
        "genre_ids": [
          16,
          35,
          18,
          10765
        ],
        "id": 94954,
        "origin_country": [
          "US"
        ],
        "original_language": "en",
        "original_name": "Hazbin Hotel",
        "overview": "In attempt to find a non-violent alternative for reducing Hell's overpopulation, the daughter of Lucifer opens a rehabilitation hotel that offers a group of misfit demons a chance at redemption.",
        "popularity": 45.8583,
        "poster_path": "/rXojaQcxVUubPLSrFV8PD4xdjrs.jpg",
        "first_air_date": "2024-01-18",
        "name": "Hazbin Hotel",
        "vote_average": 8.697,
        "vote_count": 1308
      },
      {
        "adult": false,
        "backdrop_path": "/hPea3Qy5Gd6z4kJLUruBbwAH8Rm.jpg",
        "genre_ids": [
          80,
          18
        ],
        "id": 60059,
        "origin_country": [
          "US"
        ],
        "original_language": "en",
        "original_name": "Better Call Saul",
        "overview": "Six years before Saul Goodman meets Walter White. We meet him when the man who will become Saul Goodman is known as Jimmy McGill, a small-time lawyer searching for his destiny, and, more immediately, hustling to make ends meet. Working alongside, and, often, against Jimmy, is “fixer” Mike Ehrmantraut. The series tracks Jimmy’s transformation into Saul Goodman, the man who puts “criminal” in “criminal lawyer\".",
        "popularity": 100.0526,
        "poster_path": "/zjg4jpK1Wp2kiRvtt5ND0kznako.jpg",
        "first_air_date": "2015-02-08",
        "name": "Better Call Saul",
        "vote_average": 8.7,
        "vote_count": 5769
      },
      {
        "adult": false,
        "backdrop_path": "/A6tMQAo6t6eRFCPhsrShmxZLqFB.jpg",
        "genre_ids": [
          16,
          10759,
          10765,
          35
        ],
        "id": 31911,
        "origin_country": [
          "JP"
        ],
        "original_language": "ja",
        "original_name": "鋼の錬金術師 FULLMETAL ALCHEMIST",
        "overview": "Disregard for alchemy’s laws ripped half of Edward Elric’s limbs from his body and left his brother Alphonse’s soul clinging to a suit of armor. To restore what was lost, the brothers seek the Philosopher’s Stone. Enemies and allies – the corrupt military, the Homunculi, and foreign alchemists – will alter the Elric brothers course, but their purpose will remain unchanged and their bond unbreakable.",
        "popularity": 26.0876,
        "poster_path": "/5ZFUEOULaVml7pQuXxhpR2SmVUw.jpg",
        "first_air_date": "2009-04-05",
        "name": "Fullmetal Alchemist: Brotherhood",
        "vote_average": 8.7,
        "vote_count": 2222
      },
      {
        "adult": false,
        "backdrop_path": "/7BzmK4MWc0cj4hCxwWURt6TS6UR.jpg",
        "genre_ids": [
          16,
          10765,
          10759,
          35
        ],
        "id": 131378,
        "origin_country": [
          "US"
        ],
        "original_language": "en",
        "original_name": "Adventure Time: Fionna & Cake",
        "overview": "Fionna and Cake – with the help of the former Ice King, Simon Petrikov - embark on a multiverse-hopping adventure and journey of self-discovery. All the while a powerful new antagonist determined to track them down and erase them from existence, lurks in the shadows.",
        "popularity": 36.9437,
        "poster_path": "/fi1b6U1kp73xheECzqwzMn8u3mX.jpg",
        "first_air_date": "2023-08-31",
        "name": "Adventure Time: Fionna & Cake",
        "vote_average": 8.7,
        "vote_count": 247
      },
      {
        "adult": false,
        "backdrop_path": "/uL6Ad12W09L1sfuOE2pcTeak7bt.jpg",
        "genre_ids": [
          18
        ],
        "id": 87108,
        "origin_country": [
          "US"
        ],
        "original_language": "en",
        "original_name": "Chernobyl",
        "overview": "The true story of one of the worst man-made catastrophes in history: the catastrophic nuclear accident at Chernobyl. A tale of the brave men and women who sacrificed to save Europe from unimaginable disaster.",
        "popularity": 50.8634,
        "poster_path": "/hlLXt2tOPT6RRnjiUmoxyG1LTFi.jpg",
        "first_air_date": "2019-05-06",
        "name": "Chernobyl",
        "vote_average": 8.688,
        "vote_count": 7017
      },
      {
        "adult": false,
        "backdrop_path": "/Ao5pBFuWY32cVuh6iYjEjZMEscN.jpg",
        "genre_ids": [
          16,
          35,
          10765,
          10759
        ],
        "id": 60625,
        "origin_country": [
          "US"
        ],
        "original_language": "en",
        "original_name": "Rick and Morty",
        "overview": "Rick is a mentally-unbalanced but scientifically gifted old man who has recently reconnected with his family. He spends most of his time involving his young grandson Morty in dangerous, outlandish adventures throughout space and alternate universes. Compounded with Morty's already unstable family life, these events cause Morty much distress at home and school.",
        "popularity": 187.6162,
        "poster_path": "/WGRQ8FpjkDTzivQJ43t94bOuY0.jpg",
        "first_air_date": "2013-12-02",
        "name": "Rick and Morty",
        "vote_average": 8.689,
        "vote_count": 10313
      },
      {
        "adult": false,
        "backdrop_path": "/gffVOVZ2Y9cmVIZ26Gt9ByMGCYH.jpg",
        "genre_ids": [
          16,
          18,
          9648
        ],
        "id": 220542,
        "origin_country": [
          "JP"
        ],
        "original_language": "ja",
        "original_name": "薬屋のひとりごと",
        "overview": "Maomao lived a peaceful life with her apothecary father. Until one day, she's sold as a lowly servant to the emperor's palace. But she wasn't meant for a compliant life among royalty. So when imperial heirs fall ill, she decides to step in and find a cure! This catches the eye of Jinshi, a handsome palace official who promotes her. Now, she's making a name for herself solving medical mysteries!",
        "popularity": 103.528,
        "poster_path": "/e3ojpANrFnmJCyeBNTinYwyBCIN.jpg",
        "first_air_date": "2023-10-22",
        "name": "The Apothecary Diaries",
        "vote_average": 8.7,
        "vote_count": 399
      },
      {
        "adult": false,
        "backdrop_path": "/y6re1YeUJJIAOhCG7CzFbnX70Mq.jpg",
        "genre_ids": [
          16,
          10765,
          10759
        ],
        "id": 1429,
        "origin_country": [
          "JP"
        ],
        "original_language": "ja",
        "original_name": "進撃の巨人",
        "overview": "Many years ago, the last remnants of humanity were forced to retreat behind the towering walls of a fortified city to escape the massive, man-eating Titans that roamed the land outside their fortress. Only the heroic members of the Scouting Legion dared to stray beyond the safety of the walls – but even those brave warriors seldom returned alive. Those within the city clung to the illusion of a peaceful existence until the day that dream was shattered, and their slim chance at survival was reduced to one horrifying choice: kill – or be devoured!",
        "popularity": 42.9566,
        "poster_path": "/hTP1DtLGFamjfu8WqjnuQdP1n4i.jpg",
        "first_air_date": "2013-04-07",
        "name": "Attack on Titan",
        "vote_average": 8.669,
        "vote_count": 6881
      },
      {
        "adult": false,
        "backdrop_path": "/6U0e6OHklJAcMAuIoGXjTBS5zsI.jpg",
        "genre_ids": [
          16,
          10759,
          10765
        ],
        "id": 46298,
        "origin_country": [
          "JP"
        ],
        "original_language": "ja",
        "original_name": "HUNTER×HUNTER",
        "overview": "To fulfill his dreams of becoming a legendary Hunter like his dad, a young boy must pass a rigorous examination and find his missing father.",
        "popularity": 71.2666,
        "poster_path": "/i2EEr2uBvRlAwJ8d8zTG2Y19mIa.jpg",
        "first_air_date": "2011-10-02",
        "name": "Hunter x Hunter",
        "vote_average": 8.669,
        "vote_count": 1908
      },
      {
        "adult": false,
        "backdrop_path": "/mGHrUSt2uA5RaIheSmBfRnRHPS8.jpg",
        "genre_ids": [
          16,
          10765,
          18,
          10759,
          35,
          10762
        ],
        "id": 92685,
        "origin_country": [
          "US"
        ],
        "original_language": "en",
        "original_name": "The Owl House",
        "overview": "An animated fantasy-comedy series that follows Luz, a self-assured teenage girl who accidentally stumbles upon a portal to a magical world where she befriends a rebellious witch, Eda, and an adorably tiny warrior, King. Despite not having magical abilities, Luz pursues her dream of becoming a witch by serving as Eda's apprentice at the Owl House and ultimately finds a new family in an unlikely setting.",
        "popularity": 38.1337,
        "poster_path": "/zqjSex7DZn7p4dU7mMktdJ8zQV5.jpg",
        "first_air_date": "2020-01-10",
        "name": "The Owl House",
        "vote_average": 8.7,
        "vote_count": 1692
      },
      {
        "adult": false,
        "backdrop_path": "/ywQtHG17LZhAFZyZtBflhtFMtJ7.jpg",
        "genre_ids": [
          18,
          10751
        ],
        "id": 70785,
        "origin_country": [
          "CA"
        ],
        "original_language": "en",
        "original_name": "Anne with an E",
        "overview": "A coming-of-age story about an outsider who, against all odds and numerous challenges, fights for love and acceptance and for her place in the world. The series centers on a young orphaned girl in the late 1890’s, who, after an abusive childhood spent in orphanages and the homes of strangers, is mistakenly sent to live with an elderly woman and her aging brother. Over time, 13-year-old Anne will transform their lives and eventually the small town in which they live with her unique spirit, fierce intellect and brilliant imagination.",
        "popularity": 43.98,
        "poster_path": "/6P6tXhjT5tK3qOXzxF9OMLlG7iz.jpg",
        "first_air_date": "2017-03-19",
        "name": "Anne with an E",
        "vote_average": 8.66,
        "vote_count": 4782
      },
      {
        "adult": false,
        "backdrop_path": "/lNpkvX2s8LGB0mjGODMT4o6Up7j.jpg",
        "genre_ids": [
          80,
          18
        ],
        "id": 1398,
        "origin_country": [
          "US"
        ],
        "original_language": "en",
        "original_name": "The Sopranos",
        "overview": "The story of New Jersey-based Italian-American mobster Tony Soprano and the difficulties he faces as he tries to balance the conflicting requirements of his home life and the criminal organization he heads. Those difficulties are often highlighted through his ongoing professional relationship with psychiatrist Jennifer Melfi. The show features Tony's family members and Mafia associates in prominent roles and story arcs, most notably his wife Carmela and his cousin and protégé Christopher Moltisanti.",
        "popularity": 114.7513,
        "poster_path": "/rTc7ZXdroqjkKivFPvCPX0Ru7uw.jpg",
        "first_air_date": "1999-01-10",
        "name": "The Sopranos",
        "vote_average": 8.658,
        "vote_count": 3055
      },
      {
        "adult": false,
        "backdrop_path": "/3siv3RaQrdr2tQiv9jHq71sLlzo.jpg",
        "genre_ids": [
          18,
          10751,
          10759
        ],
        "id": 85077,
        "origin_country": [
          "US"
        ],
        "original_language": "en",
        "original_name": "The Chosen",
        "overview": "The life of Christ through the eyes of those who encountered him called The Chosen.",
        "popularity": 76.828,
        "poster_path": "/dqVUFuNrMFWt7uGNWlpo91VKYOI.jpg",
        "first_air_date": "2019-04-21",
        "name": "The Chosen",
        "vote_average": 8.658,
        "vote_count": 588
      },
      {
        "adult": false,
        "backdrop_path": "/uNTrRKIOyKYISthoeizghtXPEOK.jpg",
        "genre_ids": [
          16,
          10759,
          35,
          10765
        ],
        "id": 240411,
        "origin_country": [
          "JP"
        ],
        "original_language": "ja",
        "original_name": "ダンダダン",
        "overview": "In a bet to prove whether ghosts or aliens exist, two high schoolers face terrifying paranormal threats, gain superpowers and maybe even fall in love?!",
        "popularity": 122.195,
        "poster_path": "/6qfZAOEUFIrbUH3JvePclx1nXzz.jpg",
        "first_air_date": "2024-10-04",
        "name": "Dan Da Dan",
        "vote_average": 8.643,
        "vote_count": 582
      }
    ],
    "total_pages": 112,
    "total_results": 2240
  }
  """#
