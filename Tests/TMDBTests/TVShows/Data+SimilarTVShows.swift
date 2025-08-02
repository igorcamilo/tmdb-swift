import Foundation

extension Data {
  static let similarTVShows = Data(content.utf8)
}

private let content = #"""
  {
    "page": 1,
    "results": [
      {
        "adult": false,
        "backdrop_path": "/w5saeYxA80eO4wh1ADWob6753ic.jpg",
        "genre_ids": [
          10759,
          16,
          35
        ],
        "id": 27885,
        "origin_country": [
          "JP"
        ],
        "original_language": "ja",
        "original_name": "サクラ大戦",
        "overview": "At the beginning of 1900's, Sakura Shinguji received the mission of defending imperial capital Tokyo and came from Sendai to Tokyo. But, the post which she was assigned was the floral unit of the popular opera group at that time. She tries to become familiar with her new companions while she is perplexed as to what the relationship is between the fight and the opera group. But...",
        "popularity": 15.2494,
        "poster_path": "/u9zKd1rMK4uZLw0kiV0BaqDB8q1.jpg",
        "first_air_date": "2000-04-08",
        "name": "Sakura Wars",
        "vote_average": 6.4,
        "vote_count": 7
      },
      {
        "adult": false,
        "backdrop_path": "/da5qFYz4JT1d4kTwbU1Gf15TRBD.jpg",
        "genre_ids": [
          16,
          10759,
          35,
          10762
        ],
        "id": 44,
        "origin_country": [
          "US"
        ],
        "original_language": "en",
        "original_name": "Adventures of Sonic the Hedgehog",
        "overview": "A comical, light-hearted and gag-driven adventure series based on the titular character, an arrogant and mischievous yet kind-hearted teenage hedgehog with the power to move at supersonic speeds. Sonic, with his idolizing young friend Tails, regularly oppose the wicked Dr. Ivo Robotnik, his robot henchmen Scratch, Grounder and Coconuts, and thwart their plans to conquer their home planet of Mobius.",
        "popularity": 25.8139,
        "poster_path": "/rizSqyqh8V5KlQTC9R8ohESkJ8J.jpg",
        "first_air_date": "1993-09-06",
        "name": "Adventures of Sonic the Hedgehog",
        "vote_average": 6.5,
        "vote_count": 104
      },
      {
        "adult": false,
        "backdrop_path": "/q4CbisNArigphVn608Faxijdw8N.jpg",
        "genre_ids": [
          10765,
          35,
          18,
          10759
        ],
        "id": 95,
        "origin_country": [
          "US"
        ],
        "original_language": "en",
        "original_name": "Buffy the Vampire Slayer",
        "overview": "Into every generation a slayer is born: one girl in all the world, a chosen one. She alone will wield the strength and skill to fight the vampires, demons, and the forces of darkness; to stop the spread of their evil and the swell of their number. She is the Slayer.",
        "popularity": 83.3199,
        "poster_path": "/y7fVZkyheCEQHDUEHwNmYENGfT2.jpg",
        "first_air_date": "1997-03-10",
        "name": "Buffy the Vampire Slayer",
        "vote_average": 8.116,
        "vote_count": 1852
      },
      {
        "adult": false,
        "backdrop_path": "/scd2z1W6KJk4C96RgmIQMuorqPB.jpg",
        "genre_ids": [
          16,
          35
        ],
        "id": 143,
        "origin_country": [
          "FR",
          "GB"
        ],
        "original_language": "en",
        "original_name": "Popetown",
        "overview": "Popetown is a controversial animated sitcom, billed by its producers as \"Father Ted meets South Park\", following the doodles and scribblings of a student at school during a lesson. His drawings depict the life of Father Nicholas, who lives in a Vatican City parody referred to as \"Popetown\". He is charged with being the handler for the Pope who is a complete nincompoop with the emotional and mental maturity of a four-year-old. Father Nicholas must keep the Pope out of trouble, and make sure the general public does not find out that the Holy Father is a drooling idiot. Other characters include a priest who is a sexual deviant, and a trio of corrupt cardinals who secretly run Popetown and attempt to get rich behind the Pope's back. These and other elements caused the show to be extremely controversial.",
        "popularity": 8.7811,
        "poster_path": "/2bPaSEnlVBqmzv7yOt4VyAJ5pGt.jpg",
        "first_air_date": "2005-06-08",
        "name": "Popetown",
        "vote_average": 4.5,
        "vote_count": 4
      },
      {
        "adult": false,
        "backdrop_path": null,
        "genre_ids": [
          10765,
          18
        ],
        "id": 121388,
        "origin_country": [
          "MY"
        ],
        "original_language": "zh",
        "original_name": "回盼",
        "overview": "A young trio aims to protect the world from evil, armed with magic crystals that allow them to control time, commune with spirits, and more.",
        "popularity": 2.4789,
        "poster_path": "/c0JvquLbz7iIphicuS82VEqcq3I.jpg",
        "first_air_date": "2016-10-07",
        "name": "Unchained fate",
        "vote_average": 0,
        "vote_count": 0
      },
      {
        "adult": false,
        "backdrop_path": "/fC5PJXKPhS04xrCJy82wWofUKM0.jpg",
        "genre_ids": [
          16,
          35,
          10765
        ],
        "id": 121493,
        "origin_country": [
          "CN"
        ],
        "original_language": "zh",
        "original_name": "书灵记",
        "overview": "",
        "popularity": 7.1218,
        "poster_path": "/zFEwazfVacxLFrdb9XDxcUiQP06.jpg",
        "first_air_date": "2019-09-10",
        "name": "Spirit of the Book",
        "vote_average": 6,
        "vote_count": 2
      },
      {
        "adult": false,
        "backdrop_path": "/64j3QBLDvPE5VXU8yUboVmuy9Sn.jpg",
        "genre_ids": [
          16,
          35
        ],
        "id": 121567,
        "origin_country": [
          "US"
        ],
        "original_language": "en",
        "original_name": "Koala Man",
        "overview": "A powerless superhero and family patriarch in an Australian suburb lives a not-so-secret identity as Koala Man while possessing a burning passion to snuff out petty crime and bring order the community.",
        "popularity": 9.188,
        "poster_path": "/omhNXYjGpx0d3ovdTSLh27XjXCa.jpg",
        "first_air_date": "2023-01-09",
        "name": "Koala Man",
        "vote_average": 6.537,
        "vote_count": 41
      },
      {
        "adult": false,
        "backdrop_path": "/nJr8XVb7NhlwYnGzdBXky3EVJpj.jpg",
        "genre_ids": [
          35,
          18
        ],
        "id": 124530,
        "origin_country": [
          "NZ"
        ],
        "original_language": "en",
        "original_name": "Flat3",
        "overview": "Three Kiwi-Asian girls live together in Auckland in this NZ take on Sex and the City.",
        "popularity": 3.246,
        "poster_path": "/2fzWJXos7VyoKjehdDQzCK4h3xx.jpg",
        "first_air_date": "2013-02-21",
        "name": "Flat3",
        "vote_average": 8,
        "vote_count": 1
      },
      {
        "adult": false,
        "backdrop_path": "/r07y6WnNYxtPyI2tzZVKUqaHHOf.jpg",
        "genre_ids": [
          18
        ],
        "id": 124613,
        "origin_country": [
          "US"
        ],
        "original_language": "en",
        "original_name": "Pride: The Series",
        "overview": "Four individuals connected by blood, friendship, sex, and love are dragged into the classic battle between good versus evil when a young writer begins to take liberties that may rip them all apart for good.",
        "popularity": 3.5514,
        "poster_path": "/4XbnbQCrqFQri9zYNqcsWQmviWn.jpg",
        "first_air_date": "2014-06-11",
        "name": "Pride: The Series",
        "vote_average": 1,
        "vote_count": 1
      },
      {
        "adult": false,
        "backdrop_path": "/oWTWIOAH0sof449XFIwa3lgyFpS.jpg",
        "genre_ids": [
          18
        ],
        "id": 272512,
        "origin_country": [
          "JP"
        ],
        "original_language": "ja",
        "original_name": "未成年～未熟な俺たちは不器用に進行中～",
        "overview": "Jin Minase, a dedicated student, finds his routine disrupted when he repeatedly encounters Hirukawa, a classmate from a rough neighborhood. Their unexpected interactions make Jin question his own life choices.",
        "popularity": 14.9685,
        "poster_path": "/wgjVCLLzDmH3Y5leC8mStrblhrG.jpg",
        "first_air_date": "2024-11-05",
        "name": "Our Youth",
        "vote_average": 8.8,
        "vote_count": 22
      },
      {
        "adult": false,
        "backdrop_path": "/bqj0PWsX79X9MCZqotBUHjsxI4u.jpg",
        "genre_ids": [
          16,
          10759,
          10765
        ],
        "id": 272540,
        "origin_country": [
          "US"
        ],
        "original_language": "en",
        "original_name": "Sonic x Shadow Generations: Dark Beginnings",
        "overview": "Past and present collide in a frantic chase for truth and understanding! Shadow is haunted by the memories of battles fought and lives lost. But these nightmares aren’t just lingering pain! They’re prompted by a force Shadow thought was destroyed.",
        "popularity": 7.6367,
        "poster_path": "/dsdwVLEXyZfDMnsMsQ64ooAiQPR.jpg",
        "first_air_date": "2024-09-25",
        "name": "Sonic x Shadow Generations: Dark Beginnings",
        "vote_average": 9.2,
        "vote_count": 5
      },
      {
        "adult": false,
        "backdrop_path": "/gkumTWD2gMTRr3JjU604QKz0tdt.jpg",
        "genre_ids": [
          16,
          35
        ],
        "id": 2073,
        "origin_country": [
          "US"
        ],
        "original_language": "en",
        "original_name": "Mission Hill",
        "overview": "Meet overqualified, underemployed, 24-year-old Andy French. Ambition: to be a cartoonist. Occupation: salesman at Waterbed World. Hobby: Where's the party? But responsibility soon knocks on the door of the loft apartment Andy shares with two fellow slackers when Kevin, a nerdy 17 -year-old who wears his SAT score on his shirt and his admiration for big brother Andy on his sleeve, moves in. And, for good measure, so does the French family's dog. Friends, roomies, canines, countrymen: lend me your beers. They're all part of the daze of Andy's life.",
        "popularity": 2.1291,
        "poster_path": "/hJV2F5jR8clYnQ2jgV0eU90HbiE.jpg",
        "first_air_date": "1999-09-24",
        "name": "Mission Hill",
        "vote_average": 7.54,
        "vote_count": 62
      },
      {
        "adult": false,
        "backdrop_path": "/n6jd4MN0neLZ3sWPYpXOl90j1cB.jpg",
        "genre_ids": [
          10765,
          16,
          10759,
          10762
        ],
        "id": 2121,
        "origin_country": [
          "CA"
        ],
        "original_language": "en",
        "original_name": "ReBoot",
        "overview": "Bob, a guardian from the Super Computer, helped by his friends Dot, Enzo, and dog Frisket, defend the digital city of Mainframe from evil computer viruses that seek to dominate the city and infect the entire net.",
        "popularity": 19.9312,
        "poster_path": "/5C2ZVZEZJdQLkaeO9cCw7rJ0EUM.jpg",
        "first_air_date": "1994-09-10",
        "name": "ReBoot",
        "vote_average": 7.344,
        "vote_count": 64
      },
      {
        "adult": false,
        "backdrop_path": "/A1xO9Y3k5v0k0fyi9rcyan6HiS2.jpg",
        "genre_ids": [
          16,
          35,
          10751
        ],
        "id": 2122,
        "origin_country": [
          "US"
        ],
        "original_language": "en",
        "original_name": "King of the Hill",
        "overview": "Set in Texas, this animated series follows the life of propane salesman Hank Hill, who lives with his overly confident substitute Spanish teacher wife Peggy, wannabe comedian son Bobby, and naive niece Luanne. Hank has conservative views about God, family, and country, but his values and ethics are often challenged by the situations he, his family, and his beer-drinking neighbors/buddies find themselves in.",
        "popularity": 96.3455,
        "poster_path": "/e2xyMapmYgv4AuSoSDv9Y4pQlD6.jpg",
        "first_air_date": "1997-01-12",
        "name": "King of the Hill",
        "vote_average": 7.354,
        "vote_count": 610
      },
      {
        "adult": false,
        "backdrop_path": null,
        "genre_ids": [
          16,
          35
        ],
        "id": 2185,
        "origin_country": [
          "US"
        ],
        "original_language": "en",
        "original_name": "Capitol Critters",
        "overview": "Capitol Critters is an animated television series about the lives of mice, rats, and roaches who reside in the basement and walls of the White House in Washington, D.C. The series was produced by Steven Bochco Productions and Hanna-Barbera Productions in association with 20th Century Fox Television for ABC, which aired seven out of the show's 13 episodes from January 31, 1992 to March 14, 1992. Cartoon Network later aired all 13 episodes in 1995.\n\nThe series was part of a spate of attempts by major networks to develop prime time animated shows to compete with the surprise success of Fox's The Simpsons, alongside CBS's Fish Police and Family Dog. All three proved unsuccessful and were quickly cancelled.",
        "popularity": 10.4953,
        "poster_path": "/zP1ZWJtFxFrJpYtMKqbdVqmI5n0.jpg",
        "first_air_date": "1992-01-31",
        "name": "Capitol Critters",
        "vote_average": 5,
        "vote_count": 6
      },
      {
        "adult": false,
        "backdrop_path": "/6WAinokBmZU9Jt8l74TKI8JNUG7.jpg",
        "genre_ids": [
          16,
          35
        ],
        "id": 2190,
        "origin_country": [
          "US"
        ],
        "original_language": "en",
        "original_name": "South Park",
        "overview": "Follow the misadventures of four irreverent grade-schoolers in the quiet, dysfunctional town of South Park, Colorado.",
        "popularity": 146.0586,
        "poster_path": "/dqAKFEjPEu7vWkVBkMdhGu9ifxU.jpg",
        "first_air_date": "1997-08-13",
        "name": "South Park",
        "vote_average": 8.4,
        "vote_count": 4609
      },
      {
        "adult": false,
        "backdrop_path": "/mvi2YbFePpq68xaHEwezpmSEdsv.jpg",
        "genre_ids": [
          10759,
          10765,
          18
        ],
        "id": 1941,
        "origin_country": [
          "JP"
        ],
        "original_language": "ja",
        "original_name": "牙狼＜GARO＞",
        "overview": "The Makai fight a secret war against the demon forces known as Horrors, evil creatures that manifest themselves through darkness to devour Humanity. On the frontlines are the Makai Knights, given the task of watching over a district and eliminating any Horrors that manifest there.\n\nGARO follows the tales of the Knights bearing the title of ‘Golden Knight Garo’, and their duty to vanquish the Horrors and protect Humanity from the darkness.",
        "popularity": 36.7927,
        "poster_path": "/3IBGi1F4oRlykR0k9beIwygn8YM.jpg",
        "first_air_date": "2005-10-07",
        "name": "GARO",
        "vote_average": 7.9,
        "vote_count": 27
      },
      {
        "adult": false,
        "backdrop_path": "/ueZFcwAUvkjyAB9beaiqJyg0M8H.jpg",
        "genre_ids": [
          35,
          18,
          9648,
          10765
        ],
        "id": 1981,
        "origin_country": [
          "US"
        ],
        "original_language": "en",
        "original_name": "Charmed",
        "overview": "Three sisters (Prue, Piper and Phoebe) reunite and unlock their powers to become the Charmed Ones, the most powerful good witches of all time, whose prophesied destiny is to protect innocent lives from evil beings such as demons and warlocks. Each sister possesses unique magical powers that grow and evolve, while they attempt to maintain normal lives in modern day San Francisco. ",
        "popularity": 46.2227,
        "poster_path": "/z4bPJ1BWU2EtV69NII2GVvsugQ2.jpg",
        "first_air_date": "1998-10-07",
        "name": "Charmed",
        "vote_average": 8.2,
        "vote_count": 2404
      },
      {
        "adult": false,
        "backdrop_path": "/1CjiSljtYFEZI6TSM5KfWLY19Ed.jpg",
        "genre_ids": [
          16,
          10765,
          10759,
          10762
        ],
        "id": 1988,
        "origin_country": [
          "US"
        ],
        "original_language": "en",
        "original_name": "ThunderCats",
        "overview": "The inhabitants of the planet Thundera evacuate just before it is destroyed. They were pursued by a band of mutants. All but one of their escape ships was destroyed. Only a small group of Thunderans (Thundercats) remained. With only half engine power, the group, which was led by Jaga, had to set a course for the nearest planet. Jaga commanded their ship while the other seven were in their stasis tubes. Jaga died on their journey to Third Earth and their ship crashed there. Soon they made friends with various groups in the area and they designed a fortress. Mumm-Ra the centuries-old embodiment of evil, along with the mutants that destroyed the rest of the Thunderans are a constant threat. But Lion-O, the new leader of the Thundercats, with his weapon the \"Sword of Omens\" will help the Thundercats to have a standing chance.",
        "popularity": 7.8947,
        "poster_path": "/ucY0YtUvPTBITnpHrV0D9gQ4xjl.jpg",
        "first_air_date": "1985-01-23",
        "name": "ThunderCats",
        "vote_average": 8.3,
        "vote_count": 1050
      },
      {
        "adult": false,
        "backdrop_path": "/hmu5f2Psxg10l2tamUYfTWplLTJ.jpg",
        "genre_ids": [
          10765,
          18,
          10759
        ],
        "id": 2033,
        "origin_country": [
          "GB",
          "CA"
        ],
        "original_language": "en",
        "original_name": "Shoebox Zoo",
        "overview": "Shoebox Zoo is an urban fantasy TV series made in a collaboration between BBC Scotland and various Canadian television companies. It is mostly live-action, but with CGI used for the animal figurines. The show centers on the story of a young girl named Marnie McBride, who is given a shoebox containing four toy animals by a mysterious old man at a junk shop, as a gift for her 11th birthday. These magical toys have the power to come alive on Marnie’s command, and they’re on a quest to find an ancient book that once belonged to a great and powerful wizard.",
        "popularity": 2.6217,
        "poster_path": "/hMGO9iOA5Vm8QEa4dGOzN6zWgE5.jpg",
        "first_air_date": "2004-09-21",
        "name": "Shoebox Zoo",
        "vote_average": 7.8,
        "vote_count": 5
      }
    ],
    "total_pages": 3014,
    "total_results": 60270
  }
  """#
