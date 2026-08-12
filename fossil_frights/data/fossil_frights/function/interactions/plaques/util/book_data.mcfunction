# Print the book in hand.
data get entity @s SelectedItem
tellraw @a [{text:"Book data: ",color:"yellow"},{nbt:"SelectedItem",entity:"@s",color:"white"}]
