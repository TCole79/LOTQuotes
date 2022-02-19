# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


Quote.destroy_all

Quote.create(
  quote_content:'"Not all those who wander are lost.”',
  quote_author:'Bilbo Baggins'
)

Quote.create(
  quote_content:'Memory is not what the heart desires. That is only a mirror.',
  quote_author:'Gimli' 
)

Quote.create(
  quote_content:'"There\'s some good in this world, Mr. Frodo… and it\'s worth fighting for.”',
  quote_author:'Sam Gamgee'  
)

Quote.create(
  quote_content:'"The old world will burn in the fires of industry. The forests will fall. A new order will rise.”',
  quote_author:'Saruman'
)

Quote.create(
  quote_content:'"Do not be so quick to deal out death and judgment. Even the very wise do not see all ends.”',
  quote_author:'Gandalf'
)

Quote.create(
  quote_content:'"You can not hide, I see you! There is no life after me. Only death!”',
  quote_author:'Sauron'
)
# no quotes in the db for 
# Merry
# Pippin
# Sauron
# Saruman
# Gollum 


Quote.create(
  quote_content:'"There are some things that it is better to begin than to refuse, even though the end may be dark.”',
  quote_author:'Aragorn'
)

Quote.create(
  quote_content:'"None knows what the new day shall bring him.”',
  quote_author:'Aragorn'
)

Quote.create(
  quote_content:'"One who cannot cast away a treasure at need is in fetters.”',
  quote_author:'Aragorn'
)

Quote.create(
  quote_content:'"The hasty stroke goes oft astray.”',
  quote_author:'Aragorn'
)

Quote.create(
  quote_content:'"Deeds will not be less valiant because they are unpraised.”',
  quote_author:'Aragorn'
)
[
  {
    "id": 47,
    "text": "There are some things that it is better to begin than to refuse, even though the end may be dark.",
    "character": "Aragorn"
  },
  {
    "id": 58,
    "text": "None knows what the new day shall bring him. ",
    "character": "Aragorn"
  },
  {
    "id": 60,
    "text": "One who cannot cast away a treasure at need is in fetters.",
    "character": "Aragorn"
  },
  {
    "id": 84,
    "text": "The hasty stroke goes oft astray.",
    "character": "Aragorn"
  },
  {
    "id": 85,
    "text": "Deeds will not be less valiant because they are unpraised.",
    "character": "Aragorn"
  }
]

# Gandalf
[
  {
    "id": 1,
    "text": "Many that live deserve death. And some that die deserve life. Can you give it to them? Then do not be too eager to deal out death in judgement. For even the very wise cannot see all ends.",
    "character": "Gandalf"
  },
  {
    "id": 2,
    "text": "All we have to decide is what to do with the time that is given to us.",
    "character": "Gandalf"
  },
  {
    "id": 6,
    "text": "He that breaks a thing to find out what it is has left the path of wisdom.",
    "character": "Gandalf"
  },
  {
    "id": 7,
    "text": "Even the most subtle spiders may leave a weak thread.",
    "character": "Gandalf"
  },
  {
    "id": 9,
    "text": "Oft in lies truth is hidden.",
    "character": "Gandalf"
  },
  {
    "id": 13,
    "text": "Only a small part is played in great deeds by any hero.",
    "character": "Gandalf"
  },
  {
    "id": 22,
    "text": "A treacherous weapon is ever a danger to the hand.",
    "character": "Gandalf"
  },
  {
    "id": 24,
    "text": "The wise speak only of what they know.",
    "character": "Gandalf"
  },
  {
    "id": 25,
    "text": "To crooked eyes truth may wear a wry face.",
    "character": "Gandalf"
  },
  {
    "id": 29,
    "text": "The treacherous are ever distrustful.",
    "character": "Gandalf"
  },
  {
    "id": 30,
    "text": "One cannot be both tyrant and counselor.",
    "character": "Gandalf"
  },
  {
    "id": 31,
    "text": "Often does hatred hurt itself!",
    "character": "Gandalf"
  },
  {
    "id": 34,
    "text": "Perilous to us all are the devices of an art deeper than we possess ourselves.",
    "character": "Gandalf"
  },
  {
    "id": 35,
    "text": "The burned hand teaches best. After that advice about fire goes to the heart.",
    "character": "Gandalf"
  },
  {
    "id": 39,
    "text": "Generous deed should not be checked by cold counsel.",
    "character": "Gandalf"
  },
  {
    "id": 43,
    "text": "A traitor may betray himself and do good that he does not intend.",
    "character": "Gandalf"
  },
  {
    "id": 50,
    "text": "I will not say: do not weep; for not all tears are an evil.",
    "character": "Gandalf"
  }
]

# Legolas
[
  {
    "id": 20,
    "text": "Do not cast all hope away. Tomorrow is unkown. Rede oft is found at the rising of the Sun.",
    "character": "Legolas"
  },
  {
    "id": 45,
    "text": "Follow what may, great deeds are not lessened in worth.",
    "character": "Legolas"
  }
]

# King Theoden
[
  {
    "id": 23,
    "text": "News from afar is seldom sooth.",
    "character": "King Theoden"
  },
  {
    "id": 33,
    "text": "Oft evil will shall evil mar.",
    "character": "King Theoden"
  }
]

# Boromir
[
  {
    "id": 10,
    "text": "Valour needs first strength, and then a weapon.",
    "character": "Boromir"
  }
]

# Gimli
[
  {
    "id": 14,
    "text": "Faithless is he that says farewell when the road darkens. ",
    "character": "Gimli"
  }
]

# Bilbo Baggins
[
  {
    "id": 5,
    "text": "Don't adventures ever have an end? I suppose not. Someone else always has to carry on the story.",
    "character": "Bilbo Baggins"
  }
]

# Sam Gamgee
[
  {
    "id": 37,
    "text": "Fair speech may hide a foul heart.",
    "character": "Sam Gamgee"
  }
]

# Frodo
[
  {
    "id": 36,
    "text": "Better mistrust undeserved than rash words.",
    "character": "Frodo"
  },
  {
    "id": 48,
    "text": "It is useless to meet revenge with revenge: it will heal nothing.",
    "character": "Frodo"
  },
  {
    "id": 49,
    "text": "It must often be so, Sam, when things are in danger: some one has to give them up, lose them, so that others may keep them.",
    "character": "Frodo"
  }
]

# Elrond
[
  {
    "id": 8,
    "text": "It is perilous to study too deeply the arts of the Enemy, for good or for ill.",
    "character": "Elrond"
  },
  {
    "id": 11,
    "text": "Those who made [the three elven rings of power] did not desire strength or domination or hoarded wealth, but understanding, making, and healing, to preserve all things unstained.",
    "character": "Elrond"
  },
  {
    "id": 12,
    "text": "Such is oft the course of deeds that move the wheels of the world: small hands do them because they must, while the eyes of the great are elsewhere.",
    "character": "Elrond"
  },
  {
    "id": 15,
    "text": "Let him not vow to walk in the dark, who has not seen the nightfall.",
    "character": "Elrond"
  }
]

# Galadriel
[
  {
    "id": 18,
    "text": "Do not trouble your hearts overmuch with thought of the road tonight. Maybe the paths that you each shall tread are already laid before your feet, though you do not see them.",
    "character": "Galadriel"
  }
]

# Celeborn
[
  {
    "id": 19,
    "text": "Do not despise the lore that has come down from distant years; for oft it may chance that old wives keep in memory word of things that once were needful for the wise to know.",
    "character": "Celeborn"
  }
]

# Faramir
[
  {
    "id": 38,
    "text": "The praise of the praiseworthy is above all rewards.",
    "character": "Faramir"
  }
]

# Tom Bombadil
[
  {
    "id": 4,
    "text": "Some things are ill to hear when the world's in shadow.",
    "character": "Tom Bombadil"
  }
]

# Eomer 
[
  {
    "id": 26,
    "text": "Oft the unbidden guest proves the best company.",
    "character": "Eomer"
  },
  {
    "id": 44,
    "text": "Hope oft deceives. ... Yet twice blessed is help unlooked for.",
    "character": "Eomer"
  }
]
# Eowyn 
[
  {
    "id": 42,
    "text": "Where will wants not, a way opens.",
    "character": "Eowyn"
  },
  {
    "id": 46,
    "text": "It needs but one foe to breed a war, not two.... And those who have not swords can still die upon them. Would you have the folk of Gondor gather you herbs only, when the Dark Lord gathers armies?",
    "character": "Eowyn"
  },
  {
    "id": 47,
    "text": "It is not always good to be healed in body. Nor is it always evil to die in battle, even in bitter pain.",
    "character": "Eowyn"
  }
]
# Treebeard
[
  {
    "id": 32,
    "text": "Things will go as they will; and there is no need to hurry to meet them.",
    "character": "Treebeard"
  }
]