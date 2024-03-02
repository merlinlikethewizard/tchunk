# tchunk

A datapack for chunk loading the chunks a turtle is in.
The pack will automatically try to start chunkloading any turtle placed by a player,
and also when a new turtle comes into existence next to an already chunk loaded turtle
(such as when a turtle places a turtle).

Use the set command to start chunkloading a turtle that isn't yet (must be looking at the turtle).

`/tchunk set`

Use the clear command to stop chunkloading all turtles.

`/tchunk clear`


Keep in mind loaded chunks will still not allow things like plant growth, I reccomend using the TickTock mod if it's needed