# as at server

data modify storage daegl:dialogue to_speak set from storage daegl:dialogue complete.gold.en_us[-1]
data remove storage daegl:dialogue complete.gold.en_us[-1]
execute if data storage daegl:dialogue complete.gold.en_us[-1] run schedule function daegl:dialogue/speak/complete/gold 5s

function daegl:dialogue/speak/broadcast