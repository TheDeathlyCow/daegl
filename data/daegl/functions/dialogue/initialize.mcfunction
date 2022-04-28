# asat arbitrary

# Dialogue is read backwards for performance reasons.
# The first line in the dialogue list will be the last one
# shown to players.

data modify storage daegl:dialogue name set value '{"text":"[Master of the Mines] ", "color": "gold"}'
data modify storage daegl:dialogue base_style set value '{"text":"","color": "yellow"}'


# On enter mine dialogue

data modify storage daegl:dialogue enter.en_us set value []

#data modify storage daegl:dialogue enter.en_us append value ""
data modify storage daegl:dialogue enter.en_us append value "So whenever you're ready, just head on down into the copper caves. We'll be here to man the smelter for you."
data modify storage daegl:dialogue enter.en_us append value "You will get to keep whatever you can find, we really just need you to clear out the caves."
data modify storage daegl:dialogue enter.en_us append value "All we need you to do is go into the caves, clear out the mobs, collect as much ore as you can, and bring it back up here to the smelter."
data modify storage daegl:dialogue enter.en_us append value "By the time we got to the fourth level, the monsters had overwhelmed us and we were forced to retreat back to the surface and collapse the tunnels."
data modify storage daegl:dialogue enter.en_us append value "However, we've only been able to get to the first three."
data modify storage daegl:dialogue enter.en_us append value "Anyway, there should be four levels to the mines: the copper caves, iron mines, the golden tunnels, and the crystal caverns."
data modify storage daegl:dialogue enter.en_us append value "Though that's probably just a load of hogwash. Monsters are everywhere, that doesn't mean these mines are cursed."
data modify storage daegl:dialogue enter.en_us append value "Legends say that these mines were cursed, and for that reason, the Old Dwarves were forced to abandon them."
data modify storage daegl:dialogue enter.en_us append value "Normally, we wouldn't outsource to outsiders, but we're too far from home to get our normal help."
data modify storage daegl:dialogue enter.en_us append value "Ever since we reopened the mines, we've been having a bit of a problem with a monster infestation."
data modify storage daegl:dialogue enter.en_us append value "We've been eagerly awaiting your help!"
data modify storage daegl:dialogue enter.en_us append value "Hello adventurers, welcome to Daegl!"


# Compete copper caves

data modify storage daegl:dialogue complete.copper.en_us set value []

#data modify storage daegl:dialogue complete.copper.en_us append value ""
data modify storage daegl:dialogue complete.copper.en_us append value "You can finish smelting and put away any materials you wish to collect now. When you're ready, press the lever to clear the rubble blocking the iron mines."
data modify storage daegl:dialogue complete.copper.en_us append value "Great job clearing those caves!"