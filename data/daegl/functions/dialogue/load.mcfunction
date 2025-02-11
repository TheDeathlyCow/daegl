# asat arbitrary

# Dialogue is read backwards for performance reasons.
# The first line in the dialogue list will be the last one
# shown to players.

# System messages

data modify storage daegl:dialogue system.spawners_destroyed set value '[{"text": "Spawners destroyed: ", "color": "gold"}, {"score":{"name": "spawners_destroyed", "objective": "daegl.game_variables"}, "color": "red", "bold": true}, " / ", {"score":{"name": "level_spawner_count", "objective": "daegl.game_variables"}, "color": "red", "bold": true}]'


# Names and Styles

data modify storage daegl:dialogue name.lord set value '{"text":"[Lord Ballin\' of Daegl] ", "color": "gold"}'
data modify storage daegl:dialogue style.lord set value '{"text":"","color": "yellow"}'

data modify storage daegl:dialogue name.boss set value '[{"text":"[","color":"dark_red"},{"text":"The Heart of the Mountain", "color": "dark_red", "bold":true}, {"text":"] "}]'
data modify storage daegl:dialogue style.boss set value '{"text":"","color": "red"}'

data modify storage daegl:dialogue name.merchant set value '[{"text":"[","color":"yellow"},{"text":"Ancient Master", "color": "gold", "bold":true}, {"text":"] "}]'
data modify storage daegl:dialogue style.merchant set value '{"text":"","color": "yellow"}'

# On enter mine dialogue

data modify storage daegl:dialogue enter.en_us set value []

#data modify storage daegl:dialogue enter.en_us append value ""
data modify storage daegl:dialogue enter.en_us append value "So whenever you're ready, just head on down into the copper caves. We'll be here to man the smelter for you."
data modify storage daegl:dialogue enter.en_us append value "You can keep whatever you find, we really just need you to clear out the mines."
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


# Complete copper caves

data modify storage daegl:dialogue complete.copper.en_us set value []

#data modify storage daegl:dialogue complete.copper.en_us append value ""
data modify storage daegl:dialogue complete.copper.en_us append value "You can finish smelting and put away any materials you wish to collect now. When you're ready, press the lever to clear the rubble blocking the iron mines."
data modify storage daegl:dialogue complete.copper.en_us append value "Great job clearing out those caves!"


# Complete iron mines

data modify storage daegl:dialogue complete.iron.en_us set value []

#data modify storage daegl:dialogue complete.iron.en_us append value ""
data modify storage daegl:dialogue complete.iron.en_us append value "Anyway, once you're ready, press the lever clear the rubble blocking the golden tunnels."
data modify storage daegl:dialogue complete.iron.en_us append value "Too bad we have to dig for iron and can't just make an iron farm, eh?"
data modify storage daegl:dialogue complete.iron.en_us append value "Wow! Thanks for clearing out the iron mines, we really needed that!"


# Start golden tunnels

data modify storage daegl:dialogue start.gold.en_us set value []
data modify storage daegl:dialogue start.gold.en_us append value "Hrmmm..."


# Complete golden tunnels

data modify storage daegl:dialogue complete.gold.en_us set value []

#data modify storage daegl:dialogue complete.iron.en_us append value ""
data modify storage daegl:dialogue complete.gold.en_us append value "All thats left now is the crystal cavern. Pull the lever to clear the rubble blocking it whenever you're ready."
data modify storage daegl:dialogue complete.gold.en_us append value "We thank you, adventurer, for your aid."
data modify storage daegl:dialogue complete.gold.en_us append value "The great golden mines of Daegl have once again returned to their rightful Keepers!"


# On boss death

data modify storage daegl:dialogue complete.crystal.boss.en_us set value []
data modify storage daegl:dialogue complete.crystal.merchant.en_us set value []
data modify storage daegl:dialogue complete.crystal.lord.en_us set value []

#data modify storage daegl:dialogue complete.crystal.boss.en_us append value ""
data modify storage daegl:dialogue complete.crystal.boss.en_us append value "Aaaaaaarrrgghhhh..... . .. . .... . . . ."

#data modify storage daegl:dialogue complete.crystal.merchant.en_us append value ""
data modify storage daegl:dialogue complete.crystal.merchant.en_us append value "So please, have a look at what I can provide you, and let me know if there is anything you want! And thank you again, Heroes."
data modify storage daegl:dialogue complete.crystal.merchant.en_us append value "Of course, while I am forbidden from sharing the seeds of our Knowledge with you, I can share it's fruit."
data modify storage daegl:dialogue complete.crystal.merchant.en_us append value "I am one of the Dwarven Masters, entrusted with the secret Knowledge of our crafts. So, perhaps some vials of Miner's Brew could be to your liking?"
data modify storage daegl:dialogue complete.crystal.merchant.en_us append value "Thank you Heroes! I have been trapped in that form for an age! I don't know how I could possibly ever repay you."
data modify storage daegl:dialogue complete.crystal.merchant.en_us append value "Am I free? Am I finally free?!"
data modify storage daegl:dialogue complete.crystal.merchant.en_us append value "H-hello? What's happening? Who are you?"


# boss fight dialogue
data modify storage daegl:dialogue boss_attacks.fire.attack.en_us set value []

data modify storage daegl:dialogue boss_attacks.fire.attack.en_us append value "FEEL THE BURN!"

data modify storage daegl:dialogue boss_attacks.explosion.attack.en_us set value []

data modify storage daegl:dialogue boss_attacks.explosion.attack.en_us append value "BA BOOM!"

data modify storage daegl:dialogue boss_attacks.poison.attack.en_us set value []

data modify storage daegl:dialogue boss_attacks.poison.attack.en_us append value "Hehehehe!"

data modify storage daegl:dialogue boss_attacks.ender.attack.en_us set value []

data modify storage daegl:dialogue boss_attacks.ender.attack.en_us append value "Away with you!"