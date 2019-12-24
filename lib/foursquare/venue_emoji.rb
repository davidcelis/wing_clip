module Foursquare
  class VenueEmoji
    def self.from_category_id(id)
      VENUE_EMOJI[id]
    end
  end

  VENUE_EMOJI = {
    # Arts & Entertainment
    "4d4b7104d754a06370d81259" => "🎫",

    # Amphitheater
    "56aa371be4b08b9a8d5734db" => "🏟",

    # Aquarium
    "4fceea171983d5d06c3e9823" => "🐠",

    # Arcade
    "4bf58dd8d48988d1e1931735" => "👾",

    # Art Gallery
    "4bf58dd8d48988d1e2931735" => "🖼",

    # Bowling Alley
    "4bf58dd8d48988d1e4931735" => "🎳",

    # Casino
    "4bf58dd8d48988d17c941735" => "🎰",

    # Circus
    "52e81612bcbc57f1066b79e7" => "🎪",

    # Comedy Club
    "4bf58dd8d48988d18e941735" => "🎭",

    # Concert Hall
    "5032792091d4c4b30a586d5c" => "🎻",

    # Country Dance Club
    "52e81612bcbc57f1066b79ef" => "🕺",

    # Disc Golf
    "52e81612bcbc57f1066b79e8" => "🥏",

    # Exhibit
    "56aa371be4b08b9a8d573532" => "🖼",

    # General Entertainment
    "4bf58dd8d48988d1f1931735" => "🎟",

    # Go Kart Track
    "52e81612bcbc57f1066b79ea" => "🏎",

    # Historic Site
    "4deefb944765f83613cdba6e" => "🏛️",

    # Karaoke Box
    "5744ccdfe4b0c0459246b4bb" => "🎤",
    Supported countries: JP

    # Laser Tag
    "52e81612bcbc57f1066b79e6" => "🔫",

    # Memorial Site
    "5642206c498e4bfca532186c" => "🏛️",

    # Mini Golf
    "52e81612bcbc57f1066b79eb" => "⛳️",

    # Movie Theater
    "4bf58dd8d48988d17f941735" => "🍿",

    # Drive-in Theater
    "56aa371be4b08b9a8d5734de" => "🍿",

    # Indie Movie Theater
    "4bf58dd8d48988d17e941735" => "🍿",

    # Multiplex
    "4bf58dd8d48988d180941735" => "🍿",

    # Museum
    "4bf58dd8d48988d181941735" => "🏛",

    # Art Museum
    "4bf58dd8d48988d18f941735" => "🖼",

    # Erotic Museum
    "559acbe0498e472f1a53fa23" => "🍆",

    # History Museum
    "4bf58dd8d48988d190941735" => "🏛",

    # Planetarium
    "4bf58dd8d48988d192941735" => "🔭",

    # Science Museum
    "4bf58dd8d48988d191941735" => "🔭",

    # Music Venue
    "4bf58dd8d48988d1e5931735" => "🎸",

    # Jazz Club
    "4bf58dd8d48988d1e7931735" => "🎷",

    # Piano Bar
    "4bf58dd8d48988d1e8931735" => "🎹",

    # Rock Club
    "4bf58dd8d48988d1e9931735" => "🎸",

    # Pachinko Parlor
    "5744ccdfe4b0c0459246b4b8" => "🎰",

    # Performing Arts Venue
    "4bf58dd8d48988d1f2931735" => "🎭",

    # Dance Studio
    "4bf58dd8d48988d134941735" => "🩰",

    # Indie Theater
    "4bf58dd8d48988d135941735" => "🎭",

    # Opera House
    "4bf58dd8d48988d136941735" => "🎭",

    # Theater
    "4bf58dd8d48988d137941735" => "🎭",

    # Pool Hall
    "4bf58dd8d48988d1e3931735" => "🎱",

    # Public Art
    "507c8c4091d498d9fc8c67a9" => "🖼",

    # Outdoor Sculpture
    "52e81612bcbc57f1066b79ed" => "🗿",

    # Street Art
    "52e81612bcbc57f1066b79ee" => "👩‍🎨",

    # Racecourse
    "56aa371be4b08b9a8d573514" => "🏎",

    # Racetrack
    "4bf58dd8d48988d1f4931735" => "🏎",

    # Roller Rink
    "52e81612bcbc57f1066b79e9" => "🛹",

    # Salsa Club
    "52e81612bcbc57f1066b79ec" => "💃",

    # Samba School
    "56aa371be4b08b9a8d5734f9" => "💃",

    # Stadium
    "4bf58dd8d48988d184941735" => "🏟",

    # Baseball Stadium
    "4bf58dd8d48988d18c941735" => "🏟",

    # Basketball Stadium
    "4bf58dd8d48988d18b941735" => "🏟",

    # Cricket Ground
    "4bf58dd8d48988d18a941735" => "🏏",

    # Football Stadium
    "4bf58dd8d48988d189941735" => "🏟",

    # Hockey Arena
    "4bf58dd8d48988d185941735" => "🏒",

    # Rugby Stadium
    "56aa371be4b08b9a8d573556" => "🏟",

    # Soccer Stadium
    "4bf58dd8d48988d188941735" => "🏟",

    # Tennis Stadium
    "4e39a891bd410d7aed40cbc2" => "🏟",

    # Track Stadium
    "4bf58dd8d48988d187941735" => "🏟",

    # Theme Park
    "4bf58dd8d48988d182941735" => "🎢",

    # Theme Park Ride / Attraction
    "5109983191d435c0d71c2bb1" => "🎢",

    # Tour Provider
    "56aa371be4b08b9a8d573520" => "🧳",

    # Water Park
    "4bf58dd8d48988d193941735" => "🤽‍",

    # Zoo
    "4bf58dd8d48988d17b941735" => "🐒",

    # Zoo Exhibit
    "58daa1558bbb0b01f18ec1fd" => "🐒",

    # College & University
    "4d4b7105d754a06372d81259" => "🎓",

    # College Academic Building
    "4bf58dd8d48988d198941735" => "🧑‍🏫",

    # College Arts Building
    "4bf58dd8d48988d199941735" => "🧑‍🎨",

    # College Communications Building
    "4bf58dd8d48988d19a941735" => "🗣",

    # College Engineering Building
    "4bf58dd8d48988d19e941735" => "📏",

    # College History Building
    "4bf58dd8d48988d19d941735" => "🏛",

    # College Math Building
    "4bf58dd8d48988d19c941735" => "🧮",

    # College Science Building
    "4bf58dd8d48988d19b941735" => "🧑‍🔬",

    # College Technology Building
    "4bf58dd8d48988d19f941735" => "‍🧑‍💻",

    # College Administrative Building
    "4bf58dd8d48988d197941735" => "🧑‍💼",

    # College Auditorium
    "4bf58dd8d48988d1af941735" => "🎓",

    # College Bookstore
    "4bf58dd8d48988d1b1941735" => "📚",

    # College Cafeteria
    "4bf58dd8d48988d1a1941735" => "🍽",

    # College Classroom
    "4bf58dd8d48988d1a0941735" => "🧑‍🏫",

    # College Gym
    "4bf58dd8d48988d1b2941735" => "🏋️",

    # College Lab
    "4bf58dd8d48988d1a5941735" => "🔬",

    # College Library
    "4bf58dd8d48988d1a7941735" => "📚",

    # College Quad
    "4bf58dd8d48988d1aa941735" => "4️⃣",

    # College Rec Center
    "4bf58dd8d48988d1a9941735" => "🎽",

    # College Residence Hall
    "4bf58dd8d48988d1a3941735" => "🛌",

    # College Stadium
    "4bf58dd8d48988d1b4941735" => "🏟",

    # College Baseball Diamond
    "4bf58dd8d48988d1bb941735" => "⚾️",

    # College Basketball Court
    "4bf58dd8d48988d1ba941735" => "🏀",

    # College Cricket Pitch
    "4bf58dd8d48988d1b9941735" => "🏏",

    # College Football Field
    "4bf58dd8d48988d1b8941735" => "🏟",

    # College Hockey Rink
    "4bf58dd8d48988d1b5941735" => "🏒",

    # College Soccer Field
    "4bf58dd8d48988d1b7941735" => "⚽️",

    # College Tennis Court
    "4e39a9cebd410d7aed40cbc4" => "🎾",

    # College Track
    "4bf58dd8d48988d1b6941735" => "🏟",

    # College Theater
    "4bf58dd8d48988d1ac941735" => "🎭",

    # Community College
    "4bf58dd8d48988d1a2941735" => "🎓",

    # Fraternity House
    "4bf58dd8d48988d1b0941735" => "👬",

    # General College & University
    "4bf58dd8d48988d1a8941735" => "🎓",

    # Law School
    "4bf58dd8d48988d1a6941735" => "🧑‍⚖️",

    # Medical School
    "4bf58dd8d48988d1b3941735" => "🧑‍⚕️",

    # Sorority House
    "4bf58dd8d48988d141941735" => "👭",

    # Student Center
    "4bf58dd8d48988d1ab941735" => "🎓",

    # Trade School
    "4bf58dd8d48988d1ad941735" => "🧑‍🔧",

    # University
    "4bf58dd8d48988d1ae941735" => "🎓",

    # Event
    "4d4b7105d754a06373d81259" => "🎫",

    # Christmas Market
    "52f2ab2ebcbc57f1066b8b3b" => "🎄",

    # Conference
    "5267e4d9e4b0ec79466e48c6" => "🎫",

    # Convention
    "5267e4d9e4b0ec79466e48c9" => "🎫",

    # Festival
    "5267e4d9e4b0ec79466e48c7" => "🐉",

    # Line / Queue
    "58daa1558bbb0b01f18ec1fa" => "👫",

    # Music Festival
    "5267e4d9e4b0ec79466e48d1" => "🪕",

    # Other Event
    "5267e4d9e4b0ec79466e48c8" => "🎫",

    # Parade
    "52741d85e4b0d5d1e3c6a6d9" => "🎉",

    # Sporting Event
    "5bae9231bedf3950379f89c5" => "🏅",

    # Stoop Sale
    "52f2ab2ebcbc57f1066b8b54" => "🏠",

    # Street Fair
    "5267e4d8e4b0ec79466e48c5" => "🎉",

    # Trade Fair
    "5bae9231bedf3950379f89c3" => "🧑‍💼",

    # Food
    "4d4b7105d754a06374d81259" => "🍽",

    # Afghan Restaurant
    "503288ae91d4c4b30a586d67" => "🇦🇫",

    # African Restaurant
    "4bf58dd8d48988d1c8941735" => "🌍",

    # Ethiopian Restaurant
    "4bf58dd8d48988d10a941735" => "🇪🇹",

    # American Restaurant
    "4bf58dd8d48988d14e941735" => "🍔",

    # New American Restaurant
    "4bf58dd8d48988d157941735" => "🥬",

    # Asian Restaurant
    "4bf58dd8d48988d142941735" => "🥢",

    # Burmese Restaurant
    "56aa371be4b08b9a8d573568" => "🥟",

    # Cambodian Restaurant
    "52e81612bcbc57f1066b7a03" => "🍲",

    # Chinese Restaurant
    "4bf58dd8d48988d145941735" => "🥡",

    # Anhui Restaurant
    "52af3a5e3cf9994f4e043bea" => "🇨🇳",

    # Beijing Restaurant
    "52af3a723cf9994f4e043bec" => "🇨🇳",

    # Cantonese Restaurant
    "52af3a7c3cf9994f4e043bed" => "🇨🇳",

    # Cha Chaan Teng
    "58daa1558bbb0b01f18ec1d3" => "🇨🇳",

    # Chinese Aristocrat Restaurant
    "52af3a673cf9994f4e043beb" => "🇨🇳",

    # Chinese Breakfast Place
    "52af3a903cf9994f4e043bee" => "🇨🇳",

    # Dim Sum Restaurant
    "4bf58dd8d48988d1f5931735" => "🥟",

    # Dongbei Restaurant
    "52af3a9f3cf9994f4e043bef" => "🇨🇳",

    # Fujian Restaurant
    "52af3aaa3cf9994f4e043bf0" => "🇨🇳",

    # Guizhou Restaurant
    "52af3ab53cf9994f4e043bf1" => "🇨🇳",

    # Hainan Restaurant
    "52af3abe3cf9994f4e043bf2" => "🇨🇳",

    # Hakka Restaurant
    "52af3ac83cf9994f4e043bf3" => "🇨🇳",

    # Henan Restaurant
    "52af3ad23cf9994f4e043bf4" => "🇨🇳",

    # Hong Kong Restaurant
    "52af3add3cf9994f4e043bf5" => "🇨🇳",

    # Huaiyang Restaurant
    "52af3af23cf9994f4e043bf7" => "🇨🇳",

    # Hubei Restaurant
    "52af3ae63cf9994f4e043bf6" => "🇨🇳",

    # Hunan Restaurant
    "52af3afc3cf9994f4e043bf8" => "🇨🇳",

    # Imperial Restaurant
    "52af3b053cf9994f4e043bf9" => "🇨🇳",

    # Jiangsu Restaurant
    "52af3b213cf9994f4e043bfa" => "🇨🇳",

    # Jiangxi Restaurant
    "52af3b293cf9994f4e043bfb" => "🇨🇳",

    # Macanese Restaurant
    "52af3b343cf9994f4e043bfc" => "🇨🇳",

    # Manchu Restaurant
    "52af3b3b3cf9994f4e043bfd" => "🇨🇳",

    # Peking Duck Restaurant
    "52af3b463cf9994f4e043bfe" => "🦆",

    # Shaanxi Restaurant
    "52af3b633cf9994f4e043c01" => "🇨🇳",

    # Shandong Restaurant
    "52af3b513cf9994f4e043bff" => "🇨🇳",

    # Shanghai Restaurant
    "52af3b593cf9994f4e043c00" => "🇨🇳",

    # Shanxi Restaurant
    "52af3b6e3cf9994f4e043c02" => "🇨🇳",

    # Szechuan Restaurant
    "52af3b773cf9994f4e043c03" => "🥡",

    # Taiwanese Restaurant
    "52af3b813cf9994f4e043c04" => "🍲",

    # Tianjin Restaurant
    "52af3b893cf9994f4e043c05" => "🇨🇳",

    # Xinjiang Restaurant
    "52af3b913cf9994f4e043c06" => "🇨🇳",

    # Yunnan Restaurant
    "52af3b9a3cf9994f4e043c07" => "🇨🇳",

    # Zhejiang Restaurant
    "52af3ba23cf9994f4e043c08" => "🇨🇳",

    # Filipino Restaurant
    "4eb1bd1c3b7b55596b4a748f" => "🇵🇭",

    # Himalayan Restaurant
    "52e81612bcbc57f1066b79fb" => "🍛",

    # Hotpot Restaurant
    "52af0bd33cf9994f4e043bdd" => "🍲",

    # Indonesian Restaurant
    "4deefc054765f83613cdba6f" => "🇮🇩",

    # Acehnese Restaurant
    "52960eda3cf9994f4e043ac9" => "🇮🇩",

    # Balinese Restaurant
    "52960eda3cf9994f4e043acb" => "🇮🇩",

    # Betawinese Restaurant
    "52960eda3cf9994f4e043aca" => "🇮🇩",

    # Indonesian Meatball Place
    "52960eda3cf9994f4e043acc" => "🇮🇩",

    # Javanese Restaurant
    "52960eda3cf9994f4e043ac7" => "🇮🇩",

    # Manadonese Restaurant
    "52960eda3cf9994f4e043ac8" => "🇮🇩",

    # Padangnese Restaurant
    "52960eda3cf9994f4e043ac5" => "🇮🇩",

    # Sundanese Restaurant
    "52960eda3cf9994f4e043ac6" => "🇮🇩",

    # Japanese Restaurant
    "4bf58dd8d48988d111941735" => "🏮",

    # Donburi Restaurant
    "55a59bace4b013909087cb0c" => "🍚",

    # Japanese Curry Restaurant
    "55a59bace4b013909087cb30" => "🍛",

    # Kaiseki Restaurant
    "55a59bace4b013909087cb21" => "🍱",

    # Kushikatsu Restaurant
    "55a59bace4b013909087cb06" => "🍢",

    # Monjayaki Restaurant
    "55a59bace4b013909087cb1b" => "🇯🇵",

    # Nabe Restaurant
    "55a59bace4b013909087cb1e" => "🍲",

    # Okonomiyaki Restaurant
    "55a59bace4b013909087cb18" => "🇯🇵",

    # Ramen Restaurant
    "55a59bace4b013909087cb24" => "🍜",

    # Shabu-Shabu Restaurant
    "55a59bace4b013909087cb15" => "🍲",

    # Soba Restaurant
    "55a59bace4b013909087cb27" => "🍜",

    # Sukiyaki Restaurant
    "55a59bace4b013909087cb12" => "🍲",

    # Sushi Restaurant
    "4bf58dd8d48988d1d2941735" => "🍣",

    # Takoyaki Place
    "55a59bace4b013909087cb2d" => "🐙",

    # Tempura Restaurant
    "55a59a31e4b013909087cb00" => "🍤",

    # Tonkatsu Restaurant
    "55a59af1e4b013909087cb03" => "🐖",

    # Udon Restaurant
    "55a59bace4b013909087cb2a" => "🍜",

    # Unagi Restaurant
    "55a59bace4b013909087cb0f" => "🇯🇵",

    # Wagashi Place
    "55a59bace4b013909087cb33" => "🍡",

    # Yakitori Restaurant
    "55a59bace4b013909087cb09" => "🐔",

    # Yoshoku Restaurant
    "55a59bace4b013909087cb36" => "🇯🇵",

    # Korean Restaurant
    "4bf58dd8d48988d113941735" => "🇰🇷",

    # Bossam/Jokbal Restaurant
    "56aa371be4b08b9a8d5734e4" => "🇰🇷",

    # Bunsik Restaurant
    "56aa371be4b08b9a8d5734f0" => "🇰🇷",

    # Gukbap Restaurant
    "56aa371be4b08b9a8d5734e7" => "🇰🇷",

    # Janguh Restaurant
    "56aa371be4b08b9a8d5734ed" => "🇰🇷",

    # Samgyetang Restaurant
    "56aa371be4b08b9a8d5734ea" => "🇰🇷",

    # Malay Restaurant
    "4bf58dd8d48988d156941735" => "🇲🇾",

    # Mamak Restaurant
    "5ae9595eb77c77002c2f9f26" => "🇲🇾",

    # Mongolian Restaurant
    "4eb1d5724b900d56c88a45fe" => "🇲🇳",

    # Noodle House
    "4bf58dd8d48988d1d1941735" => "🍜",

    # Satay Restaurant
    "56aa371be4b08b9a8d57350e" => "🇮🇩",

    # Thai Restaurant
    "4bf58dd8d48988d149941735" => "🇹🇭",

    # Som Tum Restaurant
    "56aa371be4b08b9a8d573502" => "🇹🇭",

    # Tibetan Restaurant
    "52af39fb3cf9994f4e043be9" => "🥟",

    # Vietnamese Restaurant
    "4bf58dd8d48988d14a941735" => "🇻🇳",

    # Australian Restaurant
    "4bf58dd8d48988d169941735" => "🇦🇺",

    # Austrian Restaurant
    "52e81612bcbc57f1066b7a01" => "🇦🇹",

    # BBQ Joint
    "4bf58dd8d48988d1df931735" => "🐖",

    # Bagel Shop
    "4bf58dd8d48988d179941735" => "🥯",

    # Bakery
    "4bf58dd8d48988d16a941735" => "🍞",

    # Belgian Restaurant
    "52e81612bcbc57f1066b7a02" => "🇧🇪",

    # Bistro
    "52e81612bcbc57f1066b79f1" => "🥖",

    # Breakfast Spot
    "4bf58dd8d48988d143941735" => "🍳",

    # Bubble Tea Shop
    "52e81612bcbc57f1066b7a0c" => "🍵",

    # Buffet
    "52e81612bcbc57f1066b79f4" => "🍽",

    # Burger Joint
    "4bf58dd8d48988d16c941735" => "🍔",

    # Cafeteria
    "4bf58dd8d48988d128941735" => "🍽",

    # Café
    "4bf58dd8d48988d16d941735" => "☕️",

    # Cajun / Creole Restaurant
    "4bf58dd8d48988d17a941735" => "⚜️",

    # Caribbean Restaurant
    "4bf58dd8d48988d144941735" => "🏝",

    # Cuban Restaurant
    "4bf58dd8d48988d154941735" => "🇨🇺",

    # Caucasian Restaurant
    "5293a7d53cf9994f4e043a45" => "🥛",

    # Coffee Shop
    "4bf58dd8d48988d1e0931735" => "☕️",

    # Comfort Food Restaurant
    "52e81612bcbc57f1066b7a00" => "🍛",

    # Creperie
    "52e81612bcbc57f1066b79f2" => "🥞",

    # Czech Restaurant
    "52f2ae52bcbc57f1066b8b81" => "🇨🇿",

    # Deli / Bodega
    "4bf58dd8d48988d146941735" => "🏪",

    # Dessert Shop
    "4bf58dd8d48988d1d0941735" => "🍰",

    # Cupcake Shop
    "4bf58dd8d48988d1bc941735" => "🧁",

    # Frozen Yogurt Shop
    "512e7cae91d4cbb4e5efe0af" => "🍨",

    # Ice Cream Shop
    "4bf58dd8d48988d1c9941735" => "🍦",

    # Pastry Shop
    "5744ccdfe4b0c0459246b4e2" => "🥐",

    # Pie Shop
    "52e81612bcbc57f1066b7a0a" => "🥧",

    # Diner
    "4bf58dd8d48988d147941735" => "🥧",

    # Donut Shop
    "4bf58dd8d48988d148941735" => "🍩",

    # Dumpling Restaurant
    "4bf58dd8d48988d108941735" => "🥟",

    # Dutch Restaurant
    "5744ccdfe4b0c0459246b4d0" => "🇳🇱",

    # Eastern European Restaurant
    "4bf58dd8d48988d109941735" => "🇪🇺",

    # Belarusian Restaurant
    "52e928d0bcbc57f1066b7e97" => "🇷🇺",

    # Bosnian Restaurant
    "58daa1558bbb0b01f18ec1ee" => "🇧🇦",

    # Bulgarian Restaurant
    "56aa371be4b08b9a8d5734f3" => "🇧🇬",

    # Romanian Restaurant
    "52960bac3cf9994f4e043ac4" => "🇷🇴",

    # Tatar Restaurant
    "52e928d0bcbc57f1066b7e98" => "🇹🇷",

    # English Restaurant
    "52e81612bcbc57f1066b7a05" => "🇬🇧",

    # Falafel Restaurant
    "4bf58dd8d48988d10b941735" => "🧆",

    # Fast Food Restaurant
    "4bf58dd8d48988d16e941735" => "🍔",

    # Fish & Chips Shop
    "4edd64a0c7ddd24ca188df1a" => "🐟",

    # Fondue Restaurant
    "52e81612bcbc57f1066b7a09" => "🧀",

    # Food Court
    "4bf58dd8d48988d120951735" => "🍽",

    # Food Stand
    "56aa371be4b08b9a8d57350b" => "🍽",

    # Food Truck
    "4bf58dd8d48988d1cb941735" => "🚚",

    # French Restaurant
    "4bf58dd8d48988d10c941735" => "🇫🇷",

    # Alsatian Restaurant
    "57558b36e4b065ecebd306b6" => "🇫🇷",

    # Auvergne Restaurant
    "57558b36e4b065ecebd306b8" => "🇫🇷",

    # Basque Restaurant
    "57558b36e4b065ecebd306bc" => "🇫🇷",

    # Brasserie
    "57558b36e4b065ecebd306b0" => "🇫🇷",

    # Breton Restaurant
    "57558b36e4b065ecebd306c5" => "🇫🇷",

    # Burgundian Restaurant
    "57558b36e4b065ecebd306c0" => "🇫🇷",

    # Catalan Restaurant
    "57558b36e4b065ecebd306cb" => "🇫🇷",

    # Ch'ti Restaurant
    "57558b36e4b065ecebd306ce" => "🇫🇷",

    # Corsican Restaurant
    "57558b36e4b065ecebd306d1" => "🇫🇷",

    # Estaminet
    "57558b36e4b065ecebd306b4" => "🇫🇷",

    # Labour Canteen
    "57558b36e4b065ecebd306b2" => "🇫🇷",

    # Lyonese Bouchon
    "57558b35e4b065ecebd306ad" => "🇫🇷",

    # Norman Restaurant
    "57558b36e4b065ecebd306d4" => "🇫🇷",

    # Provençal Restaurant
    "57558b36e4b065ecebd306d7" => "🇫🇷",

    # Savoyard Restaurant
    "57558b36e4b065ecebd306da" => "🇫🇷",

    # Southwestern French Restaurant
    "57558b36e4b065ecebd306ba" => "🇫🇷",

    # Fried Chicken Joint
    "4d4ae6fc7a7b7dea34424761" => "🍗",

    # Friterie
    "55d25775498e9f6a0816a37a" => "🍟",

    # Gastropub
    "4bf58dd8d48988d155941735" => "🍺",

    # German Restaurant
    "4bf58dd8d48988d10d941735" => "🇩🇪",

    # Apple Wine Pub
    "56aa371ce4b08b9a8d573583" => "🍷",

    # Bavarian Restaurant
    "56aa371ce4b08b9a8d573572" => "🇩🇪",

    # Bratwurst Joint
    "56aa371ce4b08b9a8d57358e" => "🌭",

    # Currywurst Joint
    "56aa371ce4b08b9a8d57358b" => "🇩🇪",

    # Franconian Restaurant
    "56aa371ce4b08b9a8d573574" => "🇩🇪",

    # German Pop-Up Restaurant
    "56aa371ce4b08b9a8d573592" => "🇩🇪",

    # Palatine Restaurant
    "56aa371ce4b08b9a8d573578" => "🇩🇪",

    # Rhenisch Restaurant
    "56aa371ce4b08b9a8d57357b" => "🇩🇪",

    # Schnitzel Restaurant
    "56aa371ce4b08b9a8d573587" => "🇩🇪",

    # Silesian Restaurant
    "56aa371ce4b08b9a8d57357f" => "🇩🇪",

    # Swabian Restaurant
    "56aa371ce4b08b9a8d573576" => "🇩🇪",

    # Gluten-free Restaurant
    "4c2cd86ed066bed06c3c5209" => "🌾",

    # Greek Restaurant
    "4bf58dd8d48988d10e941735" => "🇬🇷",

    # Bougatsa Shop
    "53d6c1b0e4b02351e88a83e8" => "🇬🇷",

    # Cretan Restaurant
    "53d6c1b0e4b02351e88a83e2" => "🇬🇷",

    # Fish Taverna
    "53d6c1b0e4b02351e88a83d8" => "🐟",

    # Grilled Meat Restaurant
    "53d6c1b0e4b02351e88a83d6" => "🥩",

    # Kafenio
    "53d6c1b0e4b02351e88a83e6" => "🇬🇷",

    # Magirio
    "53d6c1b0e4b02351e88a83e4" => "🇬🇷",

    # Meze Restaurant
    "53d6c1b0e4b02351e88a83da" => "🇬🇷",

    # Modern Greek Restaurant
    "53d6c1b0e4b02351e88a83d4" => "🇬🇷",

    # Ouzeri
    "53d6c1b0e4b02351e88a83dc" => "🇬🇷",

    # Patsa Restaurant
    "53d6c1b0e4b02351e88a83e0" => "🍝",

    # Souvlaki Shop
    "52e81612bcbc57f1066b79f3" => "🇬🇷",

    # Taverna
    "53d6c1b0e4b02351e88a83d2" => "🍺",

    # Tsipouro Restaurant
    "53d6c1b0e4b02351e88a83de" => "🇬🇷",

    # Halal Restaurant
    "52e81612bcbc57f1066b79ff" => "🥩",

    # Hawaiian Restaurant
    "52e81612bcbc57f1066b79fe" => "🌺",

    # Poke Place
    "5bae9231bedf3950379f89d4" => "🐟",

    # Hot Dog Joint
    "4bf58dd8d48988d16f941735" => "🌭",

    # Hungarian Restaurant
    "52e81612bcbc57f1066b79fa" => "🇭🇺",

    # Indian Restaurant
    "4bf58dd8d48988d10f941735" => "🇮🇳",

    # Andhra Restaurant
    "54135bf5e4b08f3d2429dfe5" => "🇮🇳",

    # Awadhi Restaurant
    "54135bf5e4b08f3d2429dff3" => "🇮🇳",

    # Bengali Restaurant
    "54135bf5e4b08f3d2429dff5" => "🇮🇳",

    # Chaat Place
    "54135bf5e4b08f3d2429dfe2" => "🇮🇳",

    # Chettinad Restaurant
    "54135bf5e4b08f3d2429dff2" => "🇮🇳",

    # Dhaba
    "54135bf5e4b08f3d2429dfe1" => "🇮🇳",

    # Dosa Place
    "54135bf5e4b08f3d2429dfe3" => "🇮🇳",

    # Goan Restaurant
    "54135bf5e4b08f3d2429dfe8" => "🇮🇳",

    # Gujarati Restaurant
    "54135bf5e4b08f3d2429dfe9" => "🇮🇳",

    # Hyderabadi Restaurant
    "54135bf5e4b08f3d2429dfe6" => "🇮🇳",

    # Indian Chinese Restaurant
    "54135bf5e4b08f3d2429dfdf" => "🇮🇳",

    # Indian Sweet Shop
    "54135bf5e4b08f3d2429dfe4" => "🍬",

    # Irani Cafe
    "54135bf5e4b08f3d2429dfe7" => "🇮🇳",

    # Jain Restaurant
    "54135bf5e4b08f3d2429dfea" => "🇮🇳",

    # Karnataka Restaurant
    "54135bf5e4b08f3d2429dfeb" => "🇮🇳",

    # Kerala Restaurant
    "54135bf5e4b08f3d2429dfed" => "🇮🇳",

    # Maharashtrian Restaurant
    "54135bf5e4b08f3d2429dfee" => "🇮🇳",

    # Mughlai Restaurant
    "54135bf5e4b08f3d2429dff4" => "🇮🇳",

    # Multicuisine Indian Restaurant
    "54135bf5e4b08f3d2429dfe0" => "🇮🇳",

    # North Indian Restaurant
    "54135bf5e4b08f3d2429dfdd" => "🇮🇳",

    # Northeast Indian Restaurant
    "54135bf5e4b08f3d2429dff6" => "🇮🇳",

    # Parsi Restaurant
    "54135bf5e4b08f3d2429dfef" => "🇮🇳",

    # Punjabi Restaurant
    "54135bf5e4b08f3d2429dff0" => "🇮🇳",

    # Rajasthani Restaurant
    "54135bf5e4b08f3d2429dff1" => "🇮🇳",

    # South Indian Restaurant
    "54135bf5e4b08f3d2429dfde" => "🇮🇳",

    # Udupi Restaurant
    "54135bf5e4b08f3d2429dfec" => "🇮🇳",

    # Irish Pub
    "52e81612bcbc57f1066b7a06" => "🍺",

    # Italian Restaurant
    "4bf58dd8d48988d110941735" => "🍝",

    # Abruzzo Restaurant
    "55a5a1ebe4b013909087cbb6" => "🇮🇹",

    # Agriturismo
    "55a5a1ebe4b013909087cb7c" => "🇮🇹",

    # Aosta Restaurant
    "55a5a1ebe4b013909087cba7" => "🇮🇹",

    # Basilicata Restaurant
    "55a5a1ebe4b013909087cba1" => "🇮🇹",

    # Calabria Restaurant
    "55a5a1ebe4b013909087cba4" => "🇮🇹",

    # Campanian Restaurant
    "55a5a1ebe4b013909087cb95" => "🇮🇹",

    # Emilia Restaurant
    "55a5a1ebe4b013909087cb89" => "🇮🇹",

    # Friuli Restaurant
    "55a5a1ebe4b013909087cb9b" => "🇮🇹",

    # Ligurian Restaurant
    "55a5a1ebe4b013909087cb98" => "🇮🇹",

    # Lombard Restaurant
    "55a5a1ebe4b013909087cbbf" => "🇮🇹",

    # Malga
    "55a5a1ebe4b013909087cb79" => "🇮🇹",

    # Marche Restaurant
    "55a5a1ebe4b013909087cbb0" => "🇮🇹",

    # Molise Restaurant
    "55a5a1ebe4b013909087cbb3" => "🇮🇹",

    # Piadineria
    "55a5a1ebe4b013909087cb74" => "🇮🇹",

    # Piedmontese Restaurant
    "55a5a1ebe4b013909087cbaa" => "🇮🇹",

    # Puglia Restaurant
    "55a5a1ebe4b013909087cb83" => "🇮🇹",

    # Romagna Restaurant
    "55a5a1ebe4b013909087cb8c" => "🇮🇹",

    # Roman Restaurant
    "55a5a1ebe4b013909087cb92" => "🇮🇹",

    # Sardinian Restaurant
    "55a5a1ebe4b013909087cb8f" => "🇮🇹",

    # Sicilian Restaurant
    "55a5a1ebe4b013909087cb86" => "🇮🇹",

    # South Tyrolean Restaurant
    "55a5a1ebe4b013909087cbb9" => "🇮🇹",

    # Trattoria/Osteria
    "55a5a1ebe4b013909087cb7f" => "🇮🇹",

    # Trentino Restaurant
    "55a5a1ebe4b013909087cbbc" => "🇮🇹",

    # Tuscan Restaurant
    "55a5a1ebe4b013909087cb9e" => "🇮🇹",

    # Umbrian Restaurant
    "55a5a1ebe4b013909087cbc2" => "🇮🇹",

    # Veneto Restaurant
    "55a5a1ebe4b013909087cbad" => "🇮🇹",

    # Jewish Restaurant
    "52e81612bcbc57f1066b79fd" => "✡️",

    # Kosher Restaurant
    "52e81612bcbc57f1066b79fc" => "✡️",

    # Juice Bar
    "4bf58dd8d48988d112941735" => "🧃",

    # Kebab Restaurant
    "5283c7b4e4b094cb91ec88d7" => "🥙",

    # Latin American Restaurant
    "4bf58dd8d48988d1be941735" => "🌽",

    # Arepa Restaurant
    "4bf58dd8d48988d152941735" => "🌽",

    # Empanada Restaurant
    "52939a8c3cf9994f4e043a35" => "🥟",

    # Salvadoran Restaurant
    "5745c7ac498e5d0483112fdb" => "🇸🇻",

    # South American Restaurant
    "4bf58dd8d48988d1cd941735" => "🍍",

    # Argentinian Restaurant
    "4bf58dd8d48988d107941735" => "🇦🇷",

    # Brazilian Restaurant
    "4bf58dd8d48988d16b941735" => "🇧🇷",

    # Acai House
    "5294c7523cf9994f4e043a62" => "🇧🇷",

    # Baiano Restaurant
    "52939ae13cf9994f4e043a3b" => "🇧🇷",

    # Central Brazilian Restaurant
    "52939a9e3cf9994f4e043a36" => "🇧🇷",

    # Churrascaria
    "52939a643cf9994f4e043a33" => "🇧🇷",

    # Empada House
    "5294c55c3cf9994f4e043a61" => "🇧🇷",

    # Goiano Restaurant
    "52939af83cf9994f4e043a3d" => "🇧🇷",

    # Mineiro Restaurant
    "52939aed3cf9994f4e043a3c" => "🇧🇷",

    # Northeastern Brazilian Restaurant
    "52939aae3cf9994f4e043a37" => "🇧🇷",

    # Northern Brazilian Restaurant
    "52939ab93cf9994f4e043a38" => "🇧🇷",

    # Pastelaria
    "5294cbda3cf9994f4e043a63" => "🇧🇷",

    # Southeastern Brazilian Restaurant
    "52939ac53cf9994f4e043a39" => "🇧🇷",

    # Southern Brazilian Restaurant
    "52939ad03cf9994f4e043a3a" => "🇧🇷",

    # Tapiocaria
    "52939a7d3cf9994f4e043a34" => "🇧🇷",

    # Colombian Restaurant
    "58daa1558bbb0b01f18ec1f4" => "🇨🇴",

    # Peruvian Restaurant
    "4eb1bfa43b7b52c0e1adc2e8" => "🇵🇪",

    # Venezuelan Restaurant
    "56aa371be4b08b9a8d573558" => "🇻🇪",

    # Mac & Cheese Joint
    "4bf58dd8d48988d1bf941735" => "🧀",

    # Mediterranean Restaurant
    "4bf58dd8d48988d1c0941735" => "🥙",

    # Moroccan Restaurant
    "4bf58dd8d48988d1c3941735" => "🇲🇦",

    # Mexican Restaurant
    "4bf58dd8d48988d1c1941735" => "🇲🇽",

    # Botanero
    "58daa1558bbb0b01f18ec1d9" => "🇲🇽",

    # Burrito Place
    "4bf58dd8d48988d153941735" => "🌯",

    # Taco Place
    "4bf58dd8d48988d151941735" => "🌮",

    # Tex-Mex Restaurant
    "56aa371ae4b08b9a8d5734ba" => "🌮",

    # Yucatecan Restaurant
    "5744ccdfe4b0c0459246b4d3" => "🇲🇽",

    # Middle Eastern Restaurant
    "4bf58dd8d48988d115941735" => "🧆",

    # Egyptian Restaurant
    "5bae9231bedf3950379f89e1" => "🇪🇬",

    # Iraqi Restaurant
    "5bae9231bedf3950379f89e7" => "🇮🇶",

    # Israeli Restaurant
    "56aa371be4b08b9a8d573529" => "🇮🇱",

    # Kurdish Restaurant
    "5744ccdfe4b0c0459246b4ca" => "🍛",

    # Lebanese Restaurant
    "58daa1558bbb0b01f18ec1cd" => "🇱🇧",

    # Persian Restaurant
    "52e81612bcbc57f1066b79f7" => "🇸🇾",

    # Ash and Haleem Place
    "58daa1558bbb0b01f18ec1bc" => "🇮🇷",

    # Dizi Place
    "58daa1558bbb0b01f18ec1c0" => "🇮🇷",

    # Gilaki Restaurant
    "58daa1558bbb0b01f18ec1c4" => "🇮🇷",

    # Jegaraki
    "58daa1558bbb0b01f18ec1c7" => "🇮🇷",

    # Tabbakhi
    "5744ccdfe4b0c0459246b4a8" => "🇮🇷",

    # Shawarma Place
    "5bae9231bedf3950379f89e4" => "🥙",

    # Syrian Restaurant
    "5bae9231bedf3950379f89da" => "🇸🇾",

    # Yemeni Restaurant
    "5bae9231bedf3950379f89ea" => "🇾🇪",

    # Modern European Restaurant
    "52e81612bcbc57f1066b79f9" => "🇪🇺",

    # Molecular Gastronomy Restaurant
    "4bf58dd8d48988d1c2941735" => "⚗️",

    # Pakistani Restaurant
    "52e81612bcbc57f1066b79f8" => "🇵🇰",

    # Pet Café
    "56aa371be4b08b9a8d573508" => "🐈",

    # Pizza Place
    "4bf58dd8d48988d1ca941735" => "🍕",

    # Polish Restaurant
    "52e81612bcbc57f1066b7a04" => "🇵🇱",

    # Portuguese Restaurant
    "4def73e84765ae376e57713a" => "🇵🇹",

    # Poutine Place
    "56aa371be4b08b9a8d5734c7" => "🍟",

    # Restaurant
    "4bf58dd8d48988d1c4941735" => "🍽",

    # Russian Restaurant
    "5293a7563cf9994f4e043a44" => "🇷🇺",

    # Blini House
    "52e928d0bcbc57f1066b7e9d" => "🥞",

    # Pelmeni House
    "52e928d0bcbc57f1066b7e9c" => "🥟",

    # Salad Place
    "4bf58dd8d48988d1bd941735" => "🥗",

    # Sandwich Place
    "4bf58dd8d48988d1c5941735" => "🥪",

    # Scandinavian Restaurant
    "4bf58dd8d48988d1c6941735" => "🧇",

    # Scottish Restaurant
    "5744ccdde4b0c0459246b4a3" => "🏴󠁧󠁢󠁳󠁣󠁴󠁿",

    # Seafood Restaurant
    "4bf58dd8d48988d1ce941735" => "🐟",

    # Slovak Restaurant
    "56aa371be4b08b9a8d57355a" => "🇸🇰",

    # Snack Place
    "4bf58dd8d48988d1c7941735" => "🥜",

    # Soup Place
    "4bf58dd8d48988d1dd931735" => "🥣",

    # Southern / Soul Food Restaurant
    "4bf58dd8d48988d14f941735" => "🍗",

    # Spanish Restaurant
    "4bf58dd8d48988d150941735" => "🇪🇸",

    # Paella Restaurant
    "4bf58dd8d48988d14d941735" => "🥘",

    # Tapas Restaurant
    "4bf58dd8d48988d1db931735" => "🇪🇸",

    # Sri Lankan Restaurant
    "5413605de4b0ae91d18581a9" => "🇱🇰",

    # Steakhouse
    "4bf58dd8d48988d1cc941735" => "🥩",

    # Swiss Restaurant
    "4bf58dd8d48988d158941735" => "🇸🇪",

    # Tea Room
    "4bf58dd8d48988d1dc931735" => "🍵",

    # Theme Restaurant
    "56aa371be4b08b9a8d573538" => "🕵️",

    # Truck Stop
    "57558b36e4b065ecebd306dd" => "🚛",

    # Turkish Restaurant
    "4f04af1f2fb6e1c99f3db0bb" => "🇹🇷",

    # Borek Place
    "530faca9bcbc57f1066bc2f3" => "🇹🇷",

    # Cigkofte Place
    "530faca9bcbc57f1066bc2f4" => "🇹🇷",

    # Doner Restaurant
    "5283c7b4e4b094cb91ec88d8" => "🥙",

    # Gozleme Place
    "5283c7b4e4b094cb91ec88d9" => "🇹🇷",

    # Kofte Place
    "5283c7b4e4b094cb91ec88db" => "🇹🇷",

    # Kokoreç Restaurant
    "5283c7b4e4b094cb91ec88d6" => "🇹🇷",

    # Kumpir Restaurant
    "56aa371be4b08b9a8d573535" => "🇹🇷",

    # Kumru Restaurant
    "56aa371be4b08b9a8d5734bd" => "🇹🇷",

    # Manti Place
    "5283c7b4e4b094cb91ec88d5" => "🇹🇷",

    # Meyhane
    "5283c7b4e4b094cb91ec88da" => "🇹🇷",

    # Pide Place
    "530faca9bcbc57f1066bc2f2" => "🇹🇷",

    # Pilavcı
    "58daa1558bbb0b01f18ec1df" => "🇹🇷",

    # Söğüş Place
    "58daa1558bbb0b01f18ec1dc" => "🇹🇷",

    # Tantuni Restaurant
    "56aa371be4b08b9a8d5734bf" => "🇹🇷",

    # Turkish Coffeehouse
    "56aa371be4b08b9a8d5734c1" => "☕️",

    # Turkish Home Cooking Restaurant
    "5283c7b4e4b094cb91ec88d4" => "🇹🇷",

    # Çöp Şiş Place
    "58daa1558bbb0b01f18ec1e2" => "🇹🇷",

    # Ukrainian Restaurant
    "52e928d0bcbc57f1066b7e96" => "🇺🇦",

    # Varenyky restaurant
    "52e928d0bcbc57f1066b7e9a" => "🇺🇦",

    # West-Ukrainian Restaurant
    "52e928d0bcbc57f1066b7e9b" => "🇺🇦",

    # Vegetarian / Vegan Restaurant
    "4bf58dd8d48988d1d3941735" => "🥕",

    # Wings Joint
    "4bf58dd8d48988d14c941735" => "🍗",

    # Nightlife Spot
    "4d4b7105d754a06376d81259" => "🌃",

    # Bar
    "4bf58dd8d48988d116941735" => "🍸",

    # Beach Bar
    "52e81612bcbc57f1066b7a0d" => "🏖",

    # Beer Bar
    "56aa371ce4b08b9a8d57356c" => "🍺",

    # Beer Garden
    "4bf58dd8d48988d117941735" => "🍺",

    # Champagne Bar
    "52e81612bcbc57f1066b7a0e" => "🥂",

    # Cocktail Bar
    "4bf58dd8d48988d11e941735" => "🍸",

    # Dive Bar
    "4bf58dd8d48988d118941735" => "🍸",

    # Gay Bar
    "4bf58dd8d48988d1d8941735" => "👨‍❤️‍👨",

    # Hookah Bar
    "4bf58dd8d48988d119941735" => "💨",

    # Hotel Bar
    "4bf58dd8d48988d1d5941735" => "🍸",

    # Karaoke Bar
    "4bf58dd8d48988d120941735" => "🎤",

    # Pub
    "4bf58dd8d48988d11b941735" => "🍺",

    # Sake Bar
    "4bf58dd8d48988d11c941735" => "🍶",

    # Speakeasy
    "4bf58dd8d48988d1d4941735" => "🍸",

    # Sports Bar
    "4bf58dd8d48988d11d941735" => "🍺",

    # Tiki Bar
    "56aa371be4b08b9a8d57354d" => "🍹",

    # Whisky Bar
    "4bf58dd8d48988d122941735" => "🥃",

    # Wine Bar
    "4bf58dd8d48988d123941735" => "🍷",

    # Brewery
    "50327c8591d4c4b30a586d5d" => "🍺",

    # Lounge
    "4bf58dd8d48988d121941735" => "🍸",

    # Night Market
    "53e510b7498ebcb1801b55d4" => "🌃",

    # Nightclub
    "4bf58dd8d48988d11f941735" => "🌃",

    # Other Nightlife
    "4bf58dd8d48988d11a941735" => "🌃",

    # Strip Club
    "4bf58dd8d48988d1d6941735" => "👯‍♀️",

    # Outdoors & Recreation
    "4d4b7105d754a06377d81259" => "🏞",

    # Athletics & Sports
    "4f4528bc4b90abdf24c9de85" => "🥇",

    # Badminton Court
    "52e81612bcbc57f1066b7a2b" => "🏸",

    # Baseball Field
    "4bf58dd8d48988d1e8941735" => "⚾️",

    # Basketball Court
    "4bf58dd8d48988d1e1941735" => "🏀",

    # Bowling Green
    "52e81612bcbc57f1066b7a2f" => "🎱",

    # Curling Ice
    "56aa371be4b08b9a8d57351a" => "🧹",

    # Golf Course
    "4bf58dd8d48988d1e6941735" => "⛳️",

    # Golf Driving Range
    "58daa1558bbb0b01f18ec1b0" => "🏌️",

    # Gym / Fitness Center
    "4bf58dd8d48988d175941735" => "🏋️",

    # Boxing Gym
    "52f2ab2ebcbc57f1066b8b47" => "🥊",

    # Climbing Gym
    "503289d391d4c4b30a586d6a" => "🧗",

    # Cycle Studio
    "52f2ab2ebcbc57f1066b8b49" => "🚴",

    # Gym Pool
    "4bf58dd8d48988d105941735" => "🏊",

    # Gymnastics Gym
    "52f2ab2ebcbc57f1066b8b48" => "🤸",

    # Gym
    "4bf58dd8d48988d176941735" => "🏋️",

    # Martial Arts Dojo
    "4bf58dd8d48988d101941735" => "🥋",

    # Outdoor Gym
    "58daa1558bbb0b01f18ec203" => "🤾",

    # Pilates Studio
    "5744ccdfe4b0c0459246b4b2" => "🤸",

    # Track
    "4bf58dd8d48988d106941735" => "🏟",

    # Weight Loss Center
    "590a0744340a5803fd8508c3" => "🏃",

    # Yoga Studio
    "4bf58dd8d48988d102941735" => "🧘",

    # Hockey Field
    "4f452cd44b9081a197eba860" => "🏑",

    # Hockey Rink
    "56aa371be4b08b9a8d57352c" => "🏒",

    # Paintball Field
    "5032829591d4c4b30a586d5e" => "🔫",

    # Rugby Pitch
    "52e81612bcbc57f1066b7a2c" => "🏉",

    # Skate Park
    "4bf58dd8d48988d167941735" => "🛹",

    # Skating Rink
    "4bf58dd8d48988d168941735" => "⛸",

    # Soccer Field
    "4cce455aebf7b749d5e191f5" => "⚽️",

    # Sports Club
    "52e81612bcbc57f1066b7a2e" => "🤾",

    # Squash Court
    "52e81612bcbc57f1066b7a2d" => "🏸",

    # Tennis Court
    "4e39a956bd410d7aed40cbc3" => "🎾",

    # Volleyball Court
    "4eb1bf013b7b6f98df247e07" => "🏐",

    # Bathing Area
    "52e81612bcbc57f1066b7a28" => "🩱",

    # Bay
    "56aa371be4b08b9a8d573544" => "🏖",

    # Beach
    "4bf58dd8d48988d1e2941735" => "🏖",

    # Nudist Beach
    "52e81612bcbc57f1066b7a30" => "🏖",

    # Surf Spot
    "4bf58dd8d48988d1e3941735" => "🏄",

    # Bike Trail
    "56aa371be4b08b9a8d57355e" => "🚵",

    # Botanical Garden
    "52e81612bcbc57f1066b7a22" => "🌳",

    # Bridge
    "4bf58dd8d48988d1df941735" => "🌉",

    # Campground
    "4bf58dd8d48988d1e4941735" => "🏕",

    # Canal Lock
    "56aa371be4b08b9a8d57353b" => "🚧",

    # Canal
    "56aa371be4b08b9a8d573562" => "🛶",

    # Castle
    "50aaa49e4b90af0d42d5de11" => "🏰",

    # Cave
    "56aa371be4b08b9a8d573511" => "🕳",

    # Cemetery
    "4bf58dd8d48988d15c941735" => "⚰️",

    # Dive Spot
    "52e81612bcbc57f1066b7a12" => "🏊",

    # Dog Run
    "4bf58dd8d48988d1e5941735" => "🐕",

    # Farm
    "4bf58dd8d48988d15b941735" => "🚜",

    # Field
    "4bf58dd8d48988d15f941735" => "🏟",

    # Fishing Spot
    "52e81612bcbc57f1066b7a0f" => "🎣",

    # Forest
    "52e81612bcbc57f1066b7a23" => "🌲",

    # Fountain
    "56aa371be4b08b9a8d573547" => "⛲️",

    # Garden
    "4bf58dd8d48988d15a941735" => "🏞",

    # Gun Range
    "52e81612bcbc57f1066b7a11" => "🔫",

    # Harbor / Marina
    "4bf58dd8d48988d1e0941735" => "🛥",

    # Hill
    "5bae9231bedf3950379f89cd" => "⛰",

    # Hot Spring
    "4bf58dd8d48988d160941735" => "♨️",

    # Indoor Play Area
    "5744ccdfe4b0c0459246b4b5" => "🏢",

    # Island
    "50aaa4314b90af0d42d5de10" => "🏝",

    # Lake
    "4bf58dd8d48988d161941735" => "🛶",

    # Lighthouse
    "4bf58dd8d48988d15d941735" => "💡",

    # Mountain Hut
    "55a5a1ebe4b013909087cb77" => "🏔",

    # Mountain
    "4eb1d4d54b900d56c88a45fc" => "🏔",

    # National Park
    "52e81612bcbc57f1066b7a21" => "🏞",

    # Nature Preserve
    "52e81612bcbc57f1066b7a13" => "🏞",

    # Other Great Outdoors
    "4bf58dd8d48988d162941735" => "🏞",

    # Palace
    "52e81612bcbc57f1066b7a14" => "🏯",

    # Park
    "4bf58dd8d48988d163941735" => "🏞",

    # Pedestrian Plaza
    "52e81612bcbc57f1066b7a25" => "🏞",

    # Playground
    "4bf58dd8d48988d1e7941735" => "🏞",

    # Plaza
    "4bf58dd8d48988d164941735" => "🏞",

    # Pool
    "4bf58dd8d48988d15e941735" => "🏊",

    # Rafting
    "52e81612bcbc57f1066b7a29" => "🚣",

    # Recreation Center
    "52e81612bcbc57f1066b7a26" => "🎽",

    # Reservoir
    "56aa371be4b08b9a8d573541" => "🚰",

    # River
    "4eb1d4dd4b900d56c88a45fd" => "🛶",

    # Rock Climbing Spot
    "50328a4b91d4c4b30a586d6b" => "🧗",

    # Roof Deck
    "4bf58dd8d48988d133951735" => "🏗",

    # Scenic Lookout
    "4bf58dd8d48988d165941735" => "🏞",

    # Sculpture Garden
    "4bf58dd8d48988d166941735" => "🏞",

    # Ski Area
    "4bf58dd8d48988d1e9941735" => "⛷",

    # Apres Ski Bar
    "4bf58dd8d48988d1ea941735" => "⛷",

    # Ski Chairlift
    "4eb1c0ed3b7b52c0e1adc2ea" => "⛷",

    # Ski Chalet
    "4bf58dd8d48988d1ec941735" => "⛷",

    # Ski Lodge
    "4bf58dd8d48988d1eb941735" => "⛷",

    # Ski Trail
    "4eb1c0f63b7b52c0e1adc2eb" => "⛷",

    # Skydiving Drop Zone
    "58daa1558bbb0b01f18ec1b9" => "🪂",

    # Stables
    "4eb1baf03b7b2c5b1d4306ca" => "🐎",

    # State / Provincial Park
    "5bae9231bedf3950379f89d0" => "🏞",

    # States & Municipalities
    "530e33ccbcbc57f1066bbfe4" => "🏞",

    # City
    "50aa9e094b90af0d42d5de0d" => "🏙",

    # County
    "5345731ebcbc57f1066c39b2" => "🗺",

    # Country
    "530e33ccbcbc57f1066bbff7" => "🗺",

    # Neighborhood
    "4f2a25ac4b909258e854f55f" => "🏡",

    # State
    "530e33ccbcbc57f1066bbff8" => "🗺",

    # Town
    "530e33ccbcbc57f1066bbff3" => "🏡",

    # Village
    "530e33ccbcbc57f1066bbff9" => "🏡",

    # Summer Camp
    "52e81612bcbc57f1066b7a10" => "🏕",

    # Trail
    "4bf58dd8d48988d159941735" => "🏕",

    # Tree
    "52e81612bcbc57f1066b7a24" => "🌳",

    # Vineyard
    "4bf58dd8d48988d1de941735" => "🍇",

    # Volcano
    "5032848691d4c4b30a586d61" => "🌋",

    # Waterfall
    "56aa371be4b08b9a8d573560" => "🌊",

    # Waterfront
    "56aa371be4b08b9a8d5734c3" => "🏖",

    # Well
    "4fbc1be21983fc883593e321" => "🚰",

    # Windmill
    "5bae9231bedf3950379f89c7" => "💨",

    # Professional & Other Places
    "4d4b7105d754a06375d81259" => "🏢",

    # Animal shelter
    "4e52d2d203646f7c19daa8ae" => "🐕",

    # Art Studio
    "58daa1558bbb0b01f18ec1d6" => "🎨",

    # Auditorium
    "4bf58dd8d48988d173941735" => "🏟",

    # Ballroom
    "56aa371be4b08b9a8d5734cf" => "🩰",

    # Building
    "4bf58dd8d48988d130941735" => "🏢",

    # Business Center
    "56aa371be4b08b9a8d573517" => "🏢",

    # Club House
    "52e81612bcbc57f1066b7a35" => "🏠",

    # Community Center
    "52e81612bcbc57f1066b7a34" => "🏫",

    # Convention Center
    "4bf58dd8d48988d1ff931735" => "🏢",

    # Meeting Room
    "4bf58dd8d48988d100941735" => "🏢",

    # Cultural Center
    "52e81612bcbc57f1066b7a32" => "🏛",

    # Distillery
    "4e0e22f5a56208c4ea9a85a0" => "🥃",

    # Distribution Center
    "52e81612bcbc57f1066b7a37" => "🏭",

    # Event Space
    "4bf58dd8d48988d171941735" => "🎉",

    # Outdoor Event Space
    "56aa371be4b08b9a8d57356a" => "🏞",

    # Factory
    "4eb1bea83b7b6f98df247e06" => "🏭",

    # Fair
    "4eb1daf44b900d56c88a4600" => "🎡",

    # Funeral Home
    "4f4534884b9074f6e4fb0174" => "⚰️",

    # Government Building
    "4bf58dd8d48988d126941735" => "🏢",

    # Capitol Building
    "4bf58dd8d48988d12a941735" => "🏛",

    # City Hall
    "4bf58dd8d48988d129941735" => "🏛",

    # Courthouse
    "4bf58dd8d48988d12b941735" => "🏛",

    # Embassy / Consulate
    "4bf58dd8d48988d12c951735" => "🏛",

    # Fire Station
    "4bf58dd8d48988d12c941735" => "🚒",

    # Monument / Landmark
    "4bf58dd8d48988d12d941735" => "🗽",

    # Police Station
    "4bf58dd8d48988d12e941735" => "🚓",

    # Town Hall
    "52e81612bcbc57f1066b7a38" => "🏛",

    # Industrial Estate
    "56aa371be4b08b9a8d5734d7" => "🏭",

    # Laboratory
    "5744ccdfe4b0c0459246b4d6" => "🔬",

    # Library
    "4bf58dd8d48988d12f941735" => "📚",

    # Medical Center
    "4bf58dd8d48988d104941735" => "🏥",

    # Acupuncturist
    "52e81612bcbc57f1066b7a3b" => "📍",

    # Alternative Healer
    "52e81612bcbc57f1066b7a3c" => "🙈",

    # Chiropractor
    "52e81612bcbc57f1066b7a3a" => "🦴",

    # Dentist's Office
    "4bf58dd8d48988d178941735" => "🦷",

    # Doctor's Office
    "4bf58dd8d48988d177941735" => "🧑‍⚕️",

    # Emergency Room
    "4bf58dd8d48988d194941735" => "🏥",

    # Eye Doctor
    "522e32fae4b09b556e370f19" => "👁",

    # Hospital
    "4bf58dd8d48988d196941735" => "🏥",

    # Hospital Ward
    "58daa1558bbb0b01f18ec1f7" => "🏥",

    # Maternity Clinic
    "56aa371be4b08b9a8d5734ff" => "🏥",

    # Medical Lab
    "4f4531b14b9074f6e4fb0103" => "🏥",

    # Mental Health Office
    "52e81612bcbc57f1066b7a39" => "🏥",

    # Nutritionist
    "58daa1558bbb0b01f18ec1d0" => "🥕",

    # Physical Therapist
    "5744ccdfe4b0c0459246b4af" => "🧑‍⚕️",

    # Rehab Center
    "56aa371be4b08b9a8d57351d" => "🏥",

    # Urgent Care Center
    "56aa371be4b08b9a8d573526" => "🏥",

    # Veterinarian
    "4d954af4a243a5684765b473" => "🏥",

    # Military Base
    "4e52adeebd41615f56317744" => "🎖",

    # Non-Profit
    "50328a8e91d4c4b30a586d6c" => "🏢",

    # Observatory
    "5744ccdfe4b0c0459246b4d9" => "🔭",

    # Office
    "4bf58dd8d48988d124941735" => "🏢",

    # Advertising Agency
    "52e81612bcbc57f1066b7a3d" => "🏢",

    # Campaign Office
    "5032764e91d4c4b30a586d5a" => "🏢",

    # Conference Room
    "4bf58dd8d48988d127941735" => "🏢",

    # Corporate Amenity
    "5665ef1d498ec706735f0e59" => "🏢",

    # Corporate Cafeteria
    "54f4ba06498e2cf5561da814" => "🍽",

    # Corporate Coffee Shop
    "5665c7b9498e7d8a4f2c0f06" => "☕️",

    # Coworking Space
    "4bf58dd8d48988d174941735" => "🏢",

    # Tech Startup
    "4bf58dd8d48988d125941735" => "🧑‍💻",

    # Parking
    "4c38df4de52ce0d596b336e1" => "🅿️",

    # Post Office
    "4bf58dd8d48988d172941735" => "🏣",

    # Power Plant
    "58daa1548bbb0b01f18ec1a9" => "🏭",

    # Prison
    "5310b8e5bcbc57f1066bcbf1" => "🏛",

    # Radio Station
    "5032856091d4c4b30a586d63" => "📻",

    # Recruiting Agency
    "52f2ab2ebcbc57f1066b8b57" => "🏢",

    # Research Station
    "58daa1558bbb0b01f18ec1b2" => "🔬",

    # School
    "4bf58dd8d48988d13b941735" => "🏫",

    # Adult Education Center
    "56aa371ce4b08b9a8d573570" => "🎓",

    # Circus School
    "52e81612bcbc57f1066b7a43" => "🎪",

    # Cooking School
    "58daa1558bbb0b01f18ec200" => "🧑‍🍳",

    # Driving School
    "52e81612bcbc57f1066b7a42" => "🚗",

    # Elementary School
    "4f4533804b9074f6e4fb0105" => "🏫",

    # Flight School
    "52e81612bcbc57f1066b7a49" => "🛩",

    # High School
    "4bf58dd8d48988d13d941735" => "🏫",

    # Language School
    "52e81612bcbc57f1066b7a48" => "🏫",

    # Middle School
    "4f4533814b9074f6e4fb0106" => "🏫",

    # Music School
    "4f04b10d2fb6e1c99f3db0be" => "🎵",

    # Nursery School
    "4f4533814b9074f6e4fb0107" => "🏥",

    # Preschool
    "52e81612bcbc57f1066b7a45" => "🏫",

    # Private School
    "52e81612bcbc57f1066b7a46" => "🏫",

    # Religious School
    "52e81612bcbc57f1066b7a47" => "⛪️",

    # Swim School
    "52e81612bcbc57f1066b7a44" => "🏊",

    # Social Club
    "52e81612bcbc57f1066b7a33" => "👨‍👩‍👧‍👦",

    # Spiritual Center
    "4bf58dd8d48988d131941735" => "⛪️",

    # Buddhist Temple
    "52e81612bcbc57f1066b7a3e" => "📿",

    # Cemevi
    "58daa1558bbb0b01f18ec1eb" => "🕌",

    # Church
    "4bf58dd8d48988d132941735" => "⛪️",

    # Confucian Temple
    "56aa371be4b08b9a8d5734fc" => "🏯",

    # Hindu Temple
    "52e81612bcbc57f1066b7a3f" => "🛕",

    # Kingdom Hall
    "5744ccdfe4b0c0459246b4ac" => "🏰",

    # Monastery
    "52e81612bcbc57f1066b7a40" => "🏰",

    # Mosque
    "4bf58dd8d48988d138941735" => "🕌",

    # Prayer Room
    "52e81612bcbc57f1066b7a41" => "⛪️",

    # Shrine
    "4eb1d80a4b900d56c88a45ff" => "⛩",

    # Sikh Temple
    "5bae9231bedf3950379f89c9" => "🕌",

    # Synagogue
    "4bf58dd8d48988d139941735" => "🕍",

    # Temple
    "4bf58dd8d48988d13a941735" => "⛩",

    # Terreiro
    "56aa371be4b08b9a8d5734f6" => "🇧🇷",

    # TV Station
    "52e81612bcbc57f1066b7a31" => "📺",

    # Voting Booth
    "4cae28ecbf23941eb1190695" => "🗳",

    # Warehouse
    "52e81612bcbc57f1066b7a36" => "🏭",

    # Waste Facility
    "58daa1558bbb0b01f18ec1ac" => "🏭",

    # Wedding Hall
    "56aa371be4b08b9a8d5734c5" => "👰",

    # Winery
    "4bf58dd8d48988d14b941735" => "🍷",

    # Residence
    "4e67e38e036454776db1fb3a" => "🏠",

    # Assisted Living
    "5032891291d4c4b30a586d68" => "🏠",

    # Home (private)
    "4bf58dd8d48988d103941735" => "🏠",

    # Housing Development
    "4f2a210c4b9023bd5841ed28" => "🏠",

    # Residential Building (Apartment / Condo)
    "4d954b06a243a5684965b473" => "🏠",

    # Trailer Park
    "52f2ab2ebcbc57f1066b8b55" => "🚐",

    # Shop & Service
    "4d4b7105d754a06378d81259" => "🏬",

    # ATM
    "52f2ab2ebcbc57f1066b8b56" => "🏧",

    # Adult Boutique
    "5267e446e4b0ec79466e48c4" => "🍆",

    # Antique Shop
    "4bf58dd8d48988d116951735" => "🕰",

    # Arts & Crafts Store
    "4bf58dd8d48988d127951735" => "🎨",

    # Astrologer
    "52f2ab2ebcbc57f1066b8b43" => "♑️",

    # Auto Dealership
    "4eb1c1623b7b52c0e1adc2ec" => "🚗",

    # Auto Garage
    "52f2ab2ebcbc57f1066b8b44" => "🚗",

    # Auto Workshop
    "56aa371be4b08b9a8d5734d3" => "🚗",

    # Automotive Shop
    "4bf58dd8d48988d124951735" => "🚗",

    # Baby Store
    "52f2ab2ebcbc57f1066b8b32" => "🚼",

    # Bank
    "4bf58dd8d48988d10a951735" => "🏦",

    # Bath House
    "52e81612bcbc57f1066b7a27" => "♨️",

    # Batik Shop
    "56aa371be4b08b9a8d5734cb" => "🥻",

    # Betting Shop
    "52f2ab2ebcbc57f1066b8b40" => "🎰",

    # Big Box Store
    "52f2ab2ebcbc57f1066b8b42" => "📦",

    # Bike Shop
    "4bf58dd8d48988d115951735" => "🚲",

    # Board Shop
    "4bf58dd8d48988d1f1941735" => "🎲",

    # Bookstore
    "4bf58dd8d48988d114951735" => "📚",

    # Bridal Shop
    "4bf58dd8d48988d11a951735" => "👰",

    # Business Service
    "5453de49498eade8af355881" => "🏢",

    # Camera Store
    "4eb1bdf03b7b55596b4a7491" => "📷",

    # Candy Store
    "4bf58dd8d48988d117951735" => "🍬",

    # Car Wash
    "4f04ae1f2fb6e1c99f3db0ba" => "🧽",

    # Carpet Store
    "52f2ab2ebcbc57f1066b8b2a" => "🧦",

    # Check Cashing Service
    "52f2ab2ebcbc57f1066b8b2d" => "🏦",

    # Child Care Service
    "5744ccdfe4b0c0459246b4c7" => "🚼",

    # Daycare
    "4f4532974b9074f6e4fb0104" => "🚼",

    # Chocolate Shop
    "52f2ab2ebcbc57f1066b8b31" => "🍫",

    # Clothing Store
    "4bf58dd8d48988d103951735" => "👖",

    # Accessories Store
    "4bf58dd8d48988d102951735" => "⌚️",

    # Boutique
    "4bf58dd8d48988d104951735" => "👠",

    # Kids Store
    "4bf58dd8d48988d105951735" => "🚼",

    # Lingerie Store
    "4bf58dd8d48988d109951735" => "👙",

    # Men's Store
    "4bf58dd8d48988d106951735" => "👔",

    # Shoe Store
    "4bf58dd8d48988d107951735" => "👞",

    # Women's Store
    "4bf58dd8d48988d108951735" => "👗",

    # Comic Shop
    "52f2ab2ebcbc57f1066b8b18" => "📚",

    # Construction & Landscaping
    "5454144b498ec1f095bff2f2" => "🚧",

    # Convenience Store
    "4d954b0ea243a5684a65b473" => "🏪",

    # Cosmetics Shop
    "4bf58dd8d48988d10c951735" => "💄",

    # Costume Shop
    "52f2ab2ebcbc57f1066b8b17" => "🧟",

    # Credit Union
    "5032850891d4c4b30a586d62" => "🏦",

    # Currency Exchange
    "5744ccdfe4b0c0459246b4be" => "🏦",

    # Department Store
    "4bf58dd8d48988d1f6941735" => "🏬",

    # Design Studio
    "4bf58dd8d48988d1f4941735" => "🎨",

    # Discount Store
    "52dea92d3cf9994f4e043dbb" => "🏬",

    # Dive Shop
    "52f2ab2ebcbc57f1066b8b1a" => "🏬",

    # Drugstore
    "5745c2e4498e11e7bccabdbd" => "🏪",

    # Dry Cleaner
    "52f2ab2ebcbc57f1066b8b1d" => "🧺",

    # EV Charging Station
    "5032872391d4c4b30a586d64" => "🔌",

    # Electronics Store
    "4bf58dd8d48988d122951735" => "🖨",

    # Entertainment Service
    "56aa371be4b08b9a8d573554" => "🎥",

    # Event Service
    "5454152e498ef71e2b9132c6" => "🎫",

    # Fabric Shop
    "52f2ab2ebcbc57f1066b8b26" => "👘",

    # Film Studio
    "56aa371be4b08b9a8d573523" => "🎞",

    # Financial or Legal Service
    "503287a291d4c4b30a586d65" => "🧑‍⚖️",

    # Fireworks Store
    "52f2ab2ebcbc57f1066b8b3a" => "🧨",

    # Fishing Store
    "52f2ab2ebcbc57f1066b8b16" => "🎣",

    # Flea Market
    "4bf58dd8d48988d1f7941735" => "🦟",

    # Floating Market
    "56aa371be4b08b9a8d573505" => "🏬",

    # Flower Shop
    "4bf58dd8d48988d11b951735" => "💐",

    # Food & Drink Shop
    "4bf58dd8d48988d1f9941735" => "🍽",

    # Beer Store
    "5370f356bcbc57f1066c94c2" => "🍺",

    # Butcher
    "4bf58dd8d48988d11d951735" => "🥩",

    # Cheese Shop
    "4bf58dd8d48988d11e951735" => "🧀",

    # Dairy Store
    "58daa1558bbb0b01f18ec1ca" => "🥛",

    # Farmers Market
    "4bf58dd8d48988d1fa941735" => "🧑‍🌾",

    # Fish Market
    "4bf58dd8d48988d10e951735" => "🐟",

    # Food Service
    "56aa371be4b08b9a8d573550" => "🧑‍🍳",

    # Gourmet Shop
    "4bf58dd8d48988d1f5941735" => "🧑‍🍳",

    # Grocery Store
    "4bf58dd8d48988d118951735" => "🛒",

    # Health Food Store
    "50aa9e744b90af0d42d5de0e" => "🏬",

    # Kuruyemişçi
    "58daa1558bbb0b01f18ec1e8" => "🛒",

    # Liquor Store
    "4bf58dd8d48988d186941735" => "🥃",

    # Organic Grocery
    "52f2ab2ebcbc57f1066b8b45" => "🥕",

    # Sausage Shop
    "56aa371be4b08b9a8d573564" => "🌭",

    # Street Food Gathering
    "53e0feef498e5aac066fd8a9" => "🌭",

    # Supermarket
    "52f2ab2ebcbc57f1066b8b46" => "🛒",

    # Turşucu
    "58daa1558bbb0b01f18ec1e5" => "🛒",

    # Wine Shop
    "4bf58dd8d48988d119951735" => "🍷",

    # Frame Store
    "52f2ab2ebcbc57f1066b8b24" => "🖼",

    # Fruit & Vegetable Store
    "52f2ab2ebcbc57f1066b8b1c" => "🥕",

    # Furniture / Home Store
    "4bf58dd8d48988d1f8941735" => "🛋",

    # Lighting Store
    "55888a5a498e782e3303b43a" => "💡",

    # Gaming Cafe
    "4bf58dd8d48988d18d941735" => "🎮",

    # Garden Center
    "4eb1c0253b7b52c0e1adc2e9" => "🏞",

    # Gas Station
    "4bf58dd8d48988d113951735" => "⛽️",

    # Gift Shop
    "4bf58dd8d48988d128951735" => "🎁",

    # Gun Shop
    "52f2ab2ebcbc57f1066b8b19" => "🔫",

    # Hardware Store
    "4bf58dd8d48988d112951735" => "🔩",

    # Health & Beauty Service
    "54541900498ea6ccd0202697" => "💅",

    # Herbs & Spices Store
    "52f2ab2ebcbc57f1066b8b2c" => "🌿",

    # Hobby Shop
    "4bf58dd8d48988d1fb941735" => "✂️",

    # Home Service
    "545419b1498ea6ccd0202f58" => "🏠",

    # Hunting Supply
    "50aaa5234b90af0d42d5de12" => "🔫",

    # IT Services
    "52f2ab2ebcbc57f1066b8b36" => "🧑‍💻",

    # Insurance Office
    "58daa1558bbb0b01f18ec1f1" => "🏢",

    # Internet Cafe
    "4bf58dd8d48988d1f0941735" => "💻",

    # Jewelry Store
    "4bf58dd8d48988d111951735" => "💍",

    # Kitchen Supply Store
    "58daa1558bbb0b01f18ec1b4" => "🔪",

    # Knitting Store
    "52f2ab2ebcbc57f1066b8b25" => "🧶",

    # Laundromat
    "52f2ab2ebcbc57f1066b8b33" => "🧺",

    # Laundry Service
    "4bf58dd8d48988d1fc941735" => "🧺",

    # Lawyer
    "52f2ab2ebcbc57f1066b8b3f" => "🧑‍⚖️",

    # Leather Goods Store
    "52f2ab2ebcbc57f1066b8b2b" => "💼",

    # Locksmith
    "52f2ab2ebcbc57f1066b8b1e" => "🔑",

    # Lottery Retailer
    "52f2ab2ebcbc57f1066b8b38" => "🎰",

    # Luggage Store
    "52f2ab2ebcbc57f1066b8b29" => "🧳",

    # Marijuana Dispensary
    "52c71aaf3cf9994f4e043d17" => "🌿",

    # Market
    "50be8ee891d4fa8dcc7199a7" => "🏬",

    # Massage Studio
    "52f2ab2ebcbc57f1066b8b3c" => "💆",

    # Mattress Store
    "52f2ab2ebcbc57f1066b8b27" => "🛏",

    # Medical Supply Store
    "58daa1558bbb0b01f18ec206" => "🩹",

    # Miscellaneous Shop
    "4bf58dd8d48988d1ff941735" => "🏬",

    # Mobile Phone Shop
    "4f04afc02fb6e1c99f3db0bc" => "📱",

    # Mobility Store
    "56aa371be4b08b9a8d57354a" => "🦽",

    # Motorcycle Shop
    "5032833091d4c4b30a586d60" => "🏍",

    # Motorsports Shop
    "59d79d6b2e268052fa2a3332" => "🏍",

    # Music Store
    "4bf58dd8d48988d1fe941735" => "💿",

    # Nail Salon
    "4f04aa0c2fb6e1c99f3db0b8" => "💅",

    # Newsstand
    "4f04ad622fb6e1c99f3db0b9" => "📰",

    # Notary
    "5ae95d208a6f17002ce792b2" => "🧑‍💼",

    # Optical Shop
    "4d954afda243a5684865b473" => "👓",

    # Other Repair Shop
    "52f2ab2ebcbc57f1066b8b2f" => "🔨",

    # Outdoor Supply Store
    "52f2ab2ebcbc57f1066b8b22" => "🧱",

    # Outlet Mall
    "5744ccdfe4b0c0459246b4df" => "🏢",

    # Outlet Store
    "52f2ab2ebcbc57f1066b8b35" => "🏬",

    # Paper / Office Supplies Store
    "4bf58dd8d48988d121951735" => "📃",

    # Pawn Shop
    "52f2ab2ebcbc57f1066b8b34" => "♟",

    # Perfume Shop
    "52f2ab2ebcbc57f1066b8b23" => "💄",

    # Pet Service
    "5032897c91d4c4b30a586d69" => "🐕",

    # Pet Store
    "4bf58dd8d48988d100951735" => "🐕",

    # Pharmacy
    "4bf58dd8d48988d10f951735" => "💊",

    # Photography Lab
    "4eb1bdde3b7b55596b4a7490" => "📷",

    # Photography Studio
    "554a5e17498efabeda6cc559" => "📷",

    # Piercing Parlor
    "52f2ab2ebcbc57f1066b8b20" => "👂",

    # Pop-Up Shop
    "52f2ab2ebcbc57f1066b8b3d" => "🏬",

    # Print Shop
    "52f2ab2ebcbc57f1066b8b28" => "🖨",

    # Public Bathroom
    "5744ccdfe4b0c0459246b4c4" => "🚻",

    # Real Estate Office
    "5032885091d4c4b30a586d66" => "🏢",

    # Record Shop
    "4bf58dd8d48988d10d951735" => "💿",

    # Recording Studio
    "52f2ab2ebcbc57f1066b8b37" => "🎙",

    # Recycling Facility
    "4f4531084b9074f6e4fb0101" => "♻️",

    # Rental Service
    "56aa371be4b08b9a8d573552" => "🚗",

    # Salon / Barbershop
    "4bf58dd8d48988d110951735" => "💈",

    # Sauna / Steam Room
    "58daa1558bbb0b01f18ec1ae" => "♨️",

    # Shipping Store
    "52f2ab2ebcbc57f1066b8b1f" => "📦",

    # Shoe Repair
    "52f2ab2ebcbc57f1066b8b39" => "👞",

    # Shopping Mall
    "4bf58dd8d48988d1fd941735" => "🏬",

    # Shopping Plaza
    "5744ccdfe4b0c0459246b4dc" => "🏬",

    # Skate Shop
    "5bae9231bedf3950379f89d2" => "🛹",

    # Ski Shop
    "56aa371be4b08b9a8d573566" => "⛷",

    # Smoke Shop
    "4bf58dd8d48988d123951735" => "🚬",

    # Smoothie Shop
    "52f2ab2ebcbc57f1066b8b41" => "🥤",

    # Souvenir Shop
    "52f2ab2ebcbc57f1066b8b1b" => "🧧",

    # Spa
    "4bf58dd8d48988d1ed941735" => "🧖",

    # Sporting Goods Shop
    "4bf58dd8d48988d1f2941735" => "🏆",

    # Stationery Store
    "52f2ab2ebcbc57f1066b8b21" => "📄",

    # Storage Facility
    "4f04b1572fb6e1c99f3db0bf" => "📦",

    # Supplement Shop
    "5744ccdfe4b0c0459246b4cd" => "💊",

    # Tailor Shop
    "5032781d91d4c4b30a586d5b" => "🧵",

    # Tanning Salon
    "4d1cf8421a97d635ce361c31" => "💆",

    # Tattoo Parlor
    "4bf58dd8d48988d1de931735" => "🖋",

    # Thrift / Vintage Store
    "4bf58dd8d48988d101951735" => "👗",

    # Toy / Game Store
    "4bf58dd8d48988d1f3941735" => "🕹",

    # Travel Agency
    "4f04b08c2fb6e1c99f3db0bd" => "🧳",

    # Used Bookstore
    "52f2ab2ebcbc57f1066b8b30" => "📚",

    # Vape Store
    "56aa371be4b08b9a8d57355c" => "💨",

    # Video Game Store
    "4bf58dd8d48988d10b951735" => "🎮",

    # Video Store
    "4bf58dd8d48988d126951735" => "📼",

    # Warehouse Store
    "52e816a6bcbc57f1066b7a54" => "🏭",

    # Watch Shop
    "52f2ab2ebcbc57f1066b8b2e" => "⌚️",

    # Travel & Transport
    "4d4b7105d754a06379d81259" => "🧳",

    # Airport
    "4bf58dd8d48988d1ed931735" => "✈️",

    # Airport Food Court
    "4bf58dd8d48988d1ef931735" => "✈️",

    # Airport Gate
    "4bf58dd8d48988d1f0931735" => "✈️",

    # Airport Lounge
    "4eb1bc533b7b2c5b1d4306cb" => "✈️",

    # Airport Service
    "56aa371be4b08b9a8d57352f" => "✈️",

    # Airport Terminal
    "4bf58dd8d48988d1eb931735" => "✈️",

    # Airport Tram
    "4bf58dd8d48988d1ec931735" => "🚊",

    # Baggage Claim
    "5744ccdfe4b0c0459246b4e5" => "🧳",

    # Plane
    "4bf58dd8d48988d1f7931735" => "✈️",

    # Baggage Locker
    "5744ccdfe4b0c0459246b4e8" => "🧳",

    # Bike Rental / Bike Share
    "4e4c9077bd41f78e849722f9" => "🚲",

    # Boat Rental
    "5744ccdfe4b0c0459246b4c1" => "🛥",

    # Boat or Ferry
    "4bf58dd8d48988d12d951735" => "⛴",

    # Border Crossing
    "52f2ab2ebcbc57f1066b8b4b" => "🛂",

    # Bus Station
    "4bf58dd8d48988d1fe931735" => "🚏",

    # Bus Line
    "4bf58dd8d48988d12b951735" => "🚌",

    # Bus Stop
    "52f2ab2ebcbc57f1066b8b4f" => "🚏",

    # Cable Car
    "52f2ab2ebcbc57f1066b8b50" => "🚠",

    # Cruise
    "55077a22498e5e9248869ba2" => "🛳",

    # Duty-free Shop
    "589ddde98ae3635c072819ee" => "🥃",

    # General Travel
    "4bf58dd8d48988d1f6931735" => "🧳",

    # Heliport
    "56aa371ce4b08b9a8d57356e" => "🚁",

    # Hotel
    "4bf58dd8d48988d1fa931735" => "🏨",

    # Bed & Breakfast
    "4bf58dd8d48988d1f8931735" => "🏨",

    # Boarding House
    "4f4530a74b9074f6e4fb0100" => "🏨",

    # Hostel
    "4bf58dd8d48988d1ee931735" => "🏨",

    # Hotel Pool
    "4bf58dd8d48988d132951735" => "🏊",

    # Inn
    "5bae9231bedf3950379f89cb" => "🏨",

    # Motel
    "4bf58dd8d48988d1fb931735" => "🏨",

    # Resort
    "4bf58dd8d48988d12f951735" => "🏨",

    # Vacation Rental
    "56aa371be4b08b9a8d5734e1" => "🏨",

    # Intersection
    "52f2ab2ebcbc57f1066b8b4c" => "🛣",

    # Light Rail Station
    "4bf58dd8d48988d1fc931735" => "🚈",

    # Metro Station
    "4bf58dd8d48988d1fd931735" => "🚇",

    # Moving Target
    "4f2a23984b9023bd5841ed2c" => "🎯",

    # Pier
    "4e74f6cabd41c4836eac4c31" => "⚓️",

    # Port
    "56aa371be4b08b9a8d57353e" => "⚓️",

    # RV Park
    "52f2ab2ebcbc57f1066b8b53" => "🚐",

    # Rental Car Location
    "4bf58dd8d48988d1ef941735" => "🚗",

    # Rest Area
    "4d954b16a243a5684b65b473" => "🚗",

    # Road
    "4bf58dd8d48988d1f9931735" => "🛣",

    # Taxi Stand
    "53fca564498e1a175f32528b" => "🚕",

    # Taxi
    "4bf58dd8d48988d130951735" => "🚕",

    # Toll Booth
    "52f2ab2ebcbc57f1066b8b4d" => "💸",

    # Toll Plaza
    "52f2ab2ebcbc57f1066b8b4e" => "💸",

    # Tourist Information Center
    "4f4530164b9074f6e4fb00ff" => "ℹ️",

    # Train Station
    "4bf58dd8d48988d129951735" => "🚉",

    # Platform
    "4f4531504b9074f6e4fb0102" => "🚉",

    # Train
    "4bf58dd8d48988d12a951735" => "🚃",

    # Tram Station
    "52f2ab2ebcbc57f1066b8b51" => "🚉",

    # Transportation Service
    "54541b70498ea6ccd0204bff" => "🚏",

    # Travel Lounge
    "4f04b25d2fb6e1c99f3db0c0" => "💺",

    # Tunnel
    "52f2ab2ebcbc57f1066b8b4a" => "🚇",
  }
end
