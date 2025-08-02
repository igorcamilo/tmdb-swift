import Foundation

extension Data {
  static let similarMovies = Data(content.utf8)
}

private let content = #"""
  {
    "page": 1,
    "results": [
      {
        "adult": false,
        "backdrop_path": "/bKceEvfXuugmjBUDYDJvod9W7UG.jpg",
        "genre_ids": [
          28,
          80,
          53,
          18
        ],
        "id": 9455,
        "original_language": "en",
        "original_title": "The Corruptor",
        "overview": "Danny is a young cop partnered with Nick, a seasoned but ethically tainted veteran. As the two try to stop a gang war in Chinatown, Danny relies on Nick but grows increasingly uncomfortable with the way Nick gets things done.",
        "popularity": 0.8479,
        "poster_path": "/ejbmUNVtqZIkZf2cE5Ws5c9FiWA.jpg",
        "release_date": "1999-03-12",
        "title": "The Corruptor",
        "video": false,
        "vote_average": 6.036,
        "vote_count": 288
      },
      {
        "adult": false,
        "backdrop_path": "/s6cgAveWCam2hYgdPhD3WbrjSBt.jpg",
        "genre_ids": [
          28,
          53,
          27,
          80,
          14,
          9648
        ],
        "id": 9456,
        "original_language": "en",
        "original_title": "The Crow: Salvation",
        "overview": "Alex Corvis, a man wrongly executed for the murder of his girlfriend, returns from the dead and sets out to find the real killer.",
        "popularity": 1.5197,
        "poster_path": "/5JkLJ0HS1hGxZHok9pjBcLCpLuX.jpg",
        "release_date": "2000-01-23",
        "title": "The Crow: Salvation",
        "video": false,
        "vote_average": 5.508,
        "vote_count": 377
      },
      {
        "adult": false,
        "backdrop_path": "/vZkoEzFdNuAEAZeJqLS7JxWPyxw.jpg",
        "genre_ids": [
          28
        ],
        "id": 9460,
        "original_language": "cn",
        "original_title": "黑俠",
        "overview": "Tsui escapes from a super soldier project and plans to lead a peaceful life. However, when his former comrades go on a violent crime spree, he takes it upon himself to end their reign of terror.",
        "popularity": 1.6272,
        "poster_path": "/eEmG43S9o5C6XeFschoFQU4Bcub.jpg",
        "release_date": "1996-11-07",
        "title": "Black Mask",
        "video": false,
        "vote_average": 6.2,
        "vote_count": 278
      },
      {
        "adult": false,
        "backdrop_path": "/nJT0QZIB7e9af31JM6sOzMeTOgD.jpg",
        "genre_ids": [
          14,
          16,
          10751
        ],
        "id": 9479,
        "original_language": "en",
        "original_title": "The Nightmare Before Christmas",
        "overview": "Tired of scaring humans every October 31 with the same old bag of tricks, Jack Skellington, the spindly king of Halloween Town, kidnaps Santa Claus and plans to deliver shrunken heads and other ghoulish gifts to children on Christmas morning. But as Christmas approaches, Jack's rag-doll girlfriend, Sally, tries to foil his misguided plans.",
        "popularity": 9.8629,
        "poster_path": "/oQffRNjK8e19rF7xVYEN8ew0j7b.jpg",
        "release_date": "1993-10-09",
        "title": "The Nightmare Before Christmas",
        "video": false,
        "vote_average": 7.834,
        "vote_count": 9840
      },
      {
        "adult": false,
        "backdrop_path": "/4telFYUn73bXqLL5JRv6jolySj7.jpg",
        "genre_ids": [
          14,
          28
        ],
        "id": 9480,
        "original_language": "en",
        "original_title": "Daredevil",
        "overview": "A man blinded in a childhood accident fights crime using his superhumanly-elevated remaining senses.",
        "popularity": 5.0839,
        "poster_path": "/oCDBwSkntYamuw8VJIxMRCtDBmi.jpg",
        "release_date": "2003-02-14",
        "title": "Daredevil",
        "video": false,
        "vote_average": 5.279,
        "vote_count": 5226
      },
      {
        "adult": false,
        "backdrop_path": "/baJHUXBcoaHnMf2sjwegbuhIjEV.jpg",
        "genre_ids": [
          878,
          28
        ],
        "id": 9482,
        "original_language": "en",
        "original_title": "Judge Dredd",
        "overview": "In a dystopian future, Dredd, the most famous judge (a cop with instant field judiciary powers) is convicted for a crime he did not commit while his murderous counterpart escapes.",
        "popularity": 3.7261,
        "poster_path": "/cfSnKn8NDU3m8UxihjVcYprA0Aq.jpg",
        "release_date": "1995-06-30",
        "title": "Judge Dredd",
        "video": false,
        "vote_average": 5.8,
        "vote_count": 2567
      },
      {
        "adult": false,
        "backdrop_path": "/gtDuUEprJkTIrzcO2vFsXgdkJ0R.jpg",
        "genre_ids": [
          12,
          28,
          35
        ],
        "id": 9486,
        "original_language": "en",
        "original_title": "Johnny English",
        "overview": "A lowly pencil pusher working for MI7, Johnny English is suddenly promoted to super spy after Agent One is assassinated and every other agent is blown up at his funeral. When a billionaire entrepreneur sponsors the exhibition of the Crown Jewels—and the valuable gems disappear on the opening night and on English's watch—the newly-designated agent must jump into action to find the thief and recover the missing gems.",
        "popularity": 3.8295,
        "poster_path": "/mmzW88tnkB2MnOV3Un2F9IUxSnZ.jpg",
        "release_date": "2003-03-14",
        "title": "Johnny English",
        "video": false,
        "vote_average": 6.28,
        "vote_count": 3578
      },
      {
        "adult": false,
        "backdrop_path": "/pWd09ohdwOSNF4IWG8a25qORc2O.jpg",
        "genre_ids": [
          10751,
          16,
          12,
          35
        ],
        "id": 9487,
        "original_language": "en",
        "original_title": "A Bug's Life",
        "overview": "On behalf of \"oppressed bugs everywhere,\" an inventive ant named Flik hires a troupe of warrior bugs to defend his bustling colony from a horde of freeloading grasshoppers led by the evil-minded Hopper.",
        "popularity": 8.3482,
        "poster_path": "/Ah3J9OJVc2CNCuH2zMydXy9fmIC.jpg",
        "release_date": "1998-11-25",
        "title": "A Bug's Life",
        "video": false,
        "vote_average": 7,
        "vote_count": 9402
      },
      {
        "adult": false,
        "backdrop_path": "/5rKa5UKXnTdLsgY0mJbjAEQX3gB.jpg",
        "genre_ids": [
          10751,
          28,
          12,
          35,
          878
        ],
        "id": 9488,
        "original_language": "en",
        "original_title": "Spy Kids 2: The Island of Lost Dreams",
        "overview": "Exploring the further adventures of Carmen and Juni Cortez, who have now joined the family spy business as Level 2 OSS agents. Their new mission is to save the world from a mad scientist living on a volcanic island populated by an imaginative menagerie of creatures. On this bizarre island, none of the Cortez's gadgets work and they must rely on their wits--and each other--to survive and save the day.",
        "popularity": 3.117,
        "poster_path": "/z8pfWCk6SlxxDLXXQdUHdxF5dwJ.jpg",
        "release_date": "2002-08-07",
        "title": "Spy Kids 2: The Island of Lost Dreams",
        "video": false,
        "vote_average": 5.649,
        "vote_count": 2245
      },
      {
        "adult": false,
        "backdrop_path": "/cLqvQbP2utIKHRonwXnDjY3l1kk.jpg",
        "genre_ids": [
          14,
          28,
          53
        ],
        "id": 9495,
        "original_language": "en",
        "original_title": "The Crow",
        "overview": "Exactly one year after young rock guitarist Eric Draven and his fiancée are brutally killed by a ruthless gang of criminals, Draven, watched over by a hypnotic crow, returns from the grave to exact revenge.",
        "popularity": 5.3283,
        "poster_path": "/rMMB3v6jYHjsvXRNJYESacoTD7j.jpg",
        "release_date": "1994-05-11",
        "title": "The Crow",
        "video": false,
        "vote_average": 7.522,
        "vote_count": 4268
      },
      {
        "adult": false,
        "backdrop_path": "/y175UUyKcEe1zLE2xC4qkfTDxNV.jpg",
        "genre_ids": [
          16,
          35,
          28
        ],
        "id": 9496,
        "original_language": "de",
        "original_title": "Werner - Volles Rooäää!!!",
        "overview": "A wicked investor wants Werner's residential area razed to the ground in order to build a shopping center. However, building tycoon Günzelsen has not reckoned with Werner. Together with his master Röhrich he's planning to blow away the plumbings with a gigantic obstruction...",
        "popularity": 0.4583,
        "poster_path": "/7JcuWbkqCfKuG3D7Ja6u5snEyqe.jpg",
        "release_date": "1999-09-16",
        "title": "Werner - Volles Rooäää!!!",
        "video": false,
        "vote_average": 5.5,
        "vote_count": 92
      },
      {
        "adult": false,
        "backdrop_path": "/364B8ohneoQSgIuYNRYZhjOCcEL.jpg",
        "genre_ids": [
          16,
          10751,
          35,
          28,
          12
        ],
        "id": 9502,
        "original_language": "en",
        "original_title": "Kung Fu Panda",
        "overview": "When the Valley of Peace is threatened, lazy Po the panda discovers his destiny as the \"chosen one\" and trains to become a kung fu hero, but transforming the unsleek slacker into a brave warrior won't be easy. It's up to Master Shifu and the Furious Five -- Tigress, Crane, Mantis, Viper and Monkey -- to give it a try.",
        "popularity": 13.853,
        "poster_path": "/wWt4JYXTg5Wr3xBW2phBrMKgp3x.jpg",
        "release_date": "2008-06-04",
        "title": "Kung Fu Panda",
        "video": false,
        "vote_average": 7.303,
        "vote_count": 12017
      },
      {
        "adult": false,
        "backdrop_path": "/lrUeu7XMNaKJn6v8ps0DHqUE11L.jpg",
        "genre_ids": [
          35,
          10751,
          12
        ],
        "id": 9513,
        "original_language": "en",
        "original_title": "Garfield: A Tail of Two Kitties",
        "overview": "Jon and Garfield visit the United Kingdom, where a case of mistaken cat identity finds Garfield ruling over a castle. His reign is soon jeopardized by the nefarious Lord Dargis, who has designs on the estate.",
        "popularity": 2.8891,
        "poster_path": "/eRbG8Buz2eFylHL5uX8bTxgoNp9.jpg",
        "release_date": "2006-06-15",
        "title": "Garfield: A Tail of Two Kitties",
        "video": false,
        "vote_average": 5.6,
        "vote_count": 2264
      },
      {
        "adult": false,
        "backdrop_path": "/bCvvGF2QljUG5MpSaTCAC1VMbvy.jpg",
        "genre_ids": [
          16,
          10751,
          35
        ],
        "id": 12448,
        "original_language": "en",
        "original_title": "The Hunchback of Notre Dame II",
        "overview": "Now that Frollo is gone, Quasimodo rings the bell with the help of his new friend and Esmeralda's and Phoebus' little son, Zephyr. But when Quasi stops by a traveling circus owned by evil magician Sarousch, he falls for Madellaine, Sarouch's assistant.",
        "popularity": 2.5894,
        "poster_path": "/14PSM6n9VSsiUwJhT0WZbgOuNvP.jpg",
        "release_date": "2002-02-06",
        "title": "The Hunchback of Notre Dame II",
        "video": false,
        "vote_average": 5.365,
        "vote_count": 825
      },
      {
        "adult": false,
        "backdrop_path": "/mHiFOw5fDSOknGHnqMGtOkb8hrb.jpg",
        "genre_ids": [
          28
        ],
        "id": 12481,
        "original_language": "zh",
        "original_title": "唐山大兄",
        "overview": "Cheng is a young Chinese mainlander who moves in with his expatriate cousins to work at an ice factory in Thailand. He does this with a family promise never to get involved in any fights. However, when members of his family begin disappearing after meeting the management of the factory, the resulting mystery and pressures force him to break that vow and take on the villainy of the Big Boss.",
        "popularity": 3.5779,
        "poster_path": "/9VFYDWYnAhXAgyqgs94lwNmMBbk.jpg",
        "release_date": "1971-10-23",
        "title": "The Big Boss",
        "video": false,
        "vote_average": 7.098,
        "vote_count": 773
      },
      {
        "adult": false,
        "backdrop_path": "/mANObBJJgfadx6G5zFdxvMhGzAC.jpg",
        "genre_ids": [
          28,
          12,
          878,
          14
        ],
        "id": 270893,
        "original_language": "ja",
        "original_title": "烈車戦隊トッキュウジャーVS仮面ライダー鎧武 ガイム 春休み合体スペシャル",
        "overview": "The ToQGers stop at a  station in Zawame City, where there is no Shadow Line activity. However, they come across Kamen Rider Gaim and are brought into a fight with the Underground Empire known as Badan. As the ToQGers and the Armored Riders work together to discover Badan’s true intentions, a mysterious Rider calling himself Fifteen appears…",
        "popularity": 0.485,
        "poster_path": "/mqoigTBo7qS4PqU6cwWtEdYJIC8.jpg",
        "release_date": "2014-03-30",
        "title": "Ressha Sentai ToQger vs. Kamen Rider Gaim: Spring Break Combined Special",
        "video": false,
        "vote_average": 7.5,
        "vote_count": 10
      },
      {
        "adult": false,
        "backdrop_path": "/plhx3rFbnhpPdDb4HkKm94OhN5p.jpg",
        "genre_ids": [
          12,
          28
        ],
        "id": 270938,
        "original_language": "en",
        "original_title": "Falcon Rising",
        "overview": "Chapman is an ex-marine in Brazil's slums, battling the yakuza outfit who attacked his sister and left her for dead.",
        "popularity": 2.2637,
        "poster_path": "/4wnfTO8mvqcTU62YMkUeKq49VMT.jpg",
        "release_date": "2014-09-05",
        "title": "Falcon Rising",
        "video": false,
        "vote_average": 6.324,
        "vote_count": 363
      },
      {
        "adult": false,
        "backdrop_path": "/rzsMWXQ7GaN60wIpg3yf01iBmXy.jpg",
        "genre_ids": [
          53,
          18,
          878
        ],
        "id": 450465,
        "original_language": "en",
        "original_title": "Glass",
        "overview": "In a series of escalating encounters, former security guard David Dunn uses his supernatural abilities to track Kevin Wendell Crumb, a disturbed man who has twenty-four personalities. Meanwhile, the shadowy presence of Elijah Price emerges as an orchestrator who holds secrets critical to both men.",
        "popularity": 5.287,
        "poster_path": "/svIDTNUoajS8dLEo7EosxvyAsgJ.jpg",
        "release_date": "2019-01-16",
        "title": "Glass",
        "video": false,
        "vote_average": 6.7,
        "vote_count": 8719
      },
      {
        "adult": false,
        "backdrop_path": "/cvybPlcv87ZqLpBi1OaartRka6.jpg",
        "genre_ids": [
          28,
          12,
          14,
          27
        ],
        "id": 12685,
        "original_language": "en",
        "original_title": "BloodRayne: The Third Reich",
        "overview": "Rayne fights against the Nazis in Europe during World War II, encountering Ekart Brand, a Nazi leader whose target is to inject Adolf Hitler with Rayne's blood in an attempt to transform him into a dhampir and attain immortality.",
        "popularity": 0.8217,
        "poster_path": "/kS48eBvmVXtNJGXWW5QMQmm1JbO.jpg",
        "release_date": "2010-06-10",
        "title": "BloodRayne: The Third Reich",
        "video": false,
        "vote_average": 3.87,
        "vote_count": 223
      },
      {
        "adult": false,
        "backdrop_path": "/yFsNmXL4S7sfd5WhG8BbTGO29t4.jpg",
        "genre_ids": [
          35,
          27,
          878
        ],
        "id": 12702,
        "original_language": "en",
        "original_title": "Critters 3",
        "overview": "As fanged, furious furballs viciously invade an L.A. apartment building and sink their teeth into the low-rent tenants, Josh leads the battle to beat back the conniving critters and save the planet.",
        "popularity": 1.8714,
        "poster_path": "/frjklbq23pRgBjhekEq6drQkrZm.jpg",
        "release_date": "1991-12-11",
        "title": "Critters 3",
        "video": false,
        "vote_average": 5.3,
        "vote_count": 425
      }
    ],
    "total_pages": 7526,
    "total_results": 150515
  }
  """#
