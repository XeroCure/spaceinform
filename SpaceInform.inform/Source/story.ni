"SpaceInform" by William Pacini and Brian Gabin

Chapter 1 - Setup

Include Conversation Package by Eric Eve.

Chapter 2 - Building the Map

port is a direction. The opposite of port is starboard.
starboard is a direction. The opposite of starboard is port.
fore is a direction. The opposite of fore is aft.
aft is a direction. The opposite of aft is fore.
 
The Mining Vessel is a room. The description is "Mining Vessel description".

The Airlock is a room. It is aft of the Mining Vessel. The description is "Air Lock description".

The Entry Commons is a room. It is aft of the Airlock. The description is "Entry Commons description".

The Hallway is a room. It is port of the Entry Commons. The description is "Hallway description".

The Exercise Room is a room. It is starboard of the Entry Commons. The description is "Exercise room description".

The Barracks is a room. It is aft of the Hallway. The description is "Barracks description".

The Galley is a room. It is aft of the Entry Commons. It is fore of the Barracks. It is starboard of the Elevator. The description is "Galley description".

The Medical Bay is a room. It is starboard of the Galley. The description is "Medical Bay description".

The Crew's Quarters is a room. It is aft of the Medical Bay. It is starboard of the Barracks. The description is "Crew's Quarters description".

The Officer's Quarters is a room. It is aft of the Barracks. The description is "Officer's Quarters description".

The Engine Room is a room. It is down of the Officer's Quarters. The description is "Engine Room description".

The Armory is a room. It is fore of the Engine Room. The description is "Armory description".

The Life Support Systems is a room. It is fore of the armory. The description is "Life Support System description".

The Brig is a room. It is starboard of the Armory. The description is "The Brig description".

The Weapons Systems Room is a room. It is up of the Officer's Quarters. The description is "Weapons Systems Room description".

The Observation Deck is a room. It is fore of the Weapons Systems. The description is "Observation Deck"

 The Bridge is a room. It is fore of the Observation Deck. The description is "Bridge description".
 
The Captain's Quarters is a room. It is starboard of the Observation Deck. The description is "Captain's Quarters description".

The Hallway is port of the Barracks.
The Entry Commons is fore of the Hallway.

The Elevator is a room. It is starboard of the Hallway. It is port of the Observation Deck. The description is "Elevator description".
Instead of going up in the Elevator:
	If Observation Deck is mapped starboard of the Elevator, say "The elevator is already on the top level.";
	If Galley is mapped starboard of the Elevator
	begin;
		now Observation Deck is mapped starboard of the Elevator;
		now nothing is mapped port of the Elevator;
		say "The door closes and the elevator churns upwards to the top level.";
	end if;
	If Armory is mapped starboard of the Elevator
	begin;
		now Galley is mapped starboard of the Elevator;
		now Hallway is mapped port of the Elevator;
		say "The door closes and the elevator churns upwards to the main level.";
	end if;
Instead of going down in the Elevator:
	If Armory is mapped starboard of the Elevator, say "The elevator is already on the bottom level.";
	If Galley is mapped starboard of the Elevator
	begin;
		now Armory is mapped starboard of the Elevator;
		now nothing is mapped port of the Elevator;
		say "The door closes and the elevator churns upwards to the bottom level.";
	end if;
	If Observation Deck is mapped starboard of the Elevator
	begin;
		now Galley is mapped starboard of the Elevator;
		now Hallway is mapped port of the Elevator;
		say "The door closes and the elevator churns upwards to the main level.";
	end if;

Chapter 3- Converstations

The captain-introduction-node is a convnode.
node-introduction for captain-introduction-node:
	say "This is the captain speaking."

Chapter 4 - Radio Communication

A radio is a kind of thing.

A radio called the ship radio is in the Mining Vessel. Understand "1234" as the ship radio.
A radio called the Captain's Radio is in the Bridge. Understand "5421" as the Captain's radio.

Understand "radio [any radio] on [something]" as contacting it on.
Understand "radio [any radio]" as contacting it on.
Understand the commands "contact" or "call" as "radio".

Connection relates one thing to another (called the other party).
The verb to reach (it reaches, they reach, it reached) implies the connection relation.

Contacting it on is an action applying to one visible thing and one thing.

Check contacting it on:
	if the second noun is not an radio, say "[The second noun] is unlikely to be much use in that respect." instead;
	if the second noun is the noun, say "You get a busy signal." instead.
	
Carry out contacting it on:
	if a person (called the listener) can see the noun, now the player reaches the listener.
	
Report contacting it on:
	say "You successfully connect with someone on the other end of the radio.";
	
Rule for supplying a missing second noun while contacting something on:
	assign a radio.
	
To assign a radio:
	if the player can touch a radio (called the current phone):
		say "(on [the current phone])[line break]";
		now the second noun is the current phone;
	otherwise:
		say "You don't have a radio handy.";
		
Before contacting something on something when the player reaches someone:
	say "(first ending your conversation with [the other party of the player])[command clarification break]";
	end current conversation.
	
Understand "disconnect [something]" as disconnecting.

Disconnecting is an action applying to one thing.

Check disconnecting:
	if the noun is not a radio, say "You can't disconnect [the noun]." instead;
	if the player does not reach someone, say "You're not communicating with anyone." instead.
	
Carry out disconnecting:
	now the player does not reach anyone.
	
Report disconnecting:
	say "You turn your radio off."
	
Before going somewhere when the player reaches someone:
	say "(first ending your conversation with [the other party of the player])[command clarification break]";
	end current conversation.
	
Understand "radio [text]" as misdialing. Misdialing is an action applying to one topic. Carry out misdialing: say "There's nothing but static on the radio."

Before misdialing when the player reaches someone:
	say "(first ending your conversation with [the other party of the player])[command clarification break]";
	end current conversation.
	
To end current conversation:
	let the current radio be a random radio which can be touched by the player;
	silently try disconnecting the current radio.
	
After deciding the scope of the player while the player reaches someone:
	place the other party of the player in scope, but not its contents.
	
To decide whether acting through the line:
	if the noun is something and the location of the noun is not the location of the player:
		yes;
	if the second noun is something and the location of the second noun is not the location of the player:
		yes;
	no.
	
Visibility rule when acting through the line:
	there is insufficient light.
	
Rule for printing a refusal to act in the dark when acting through the line:
	say "You're not on a video phone, so you can only hear." instead.
	
A rule for reaching inside a room (called destination):
	if the other party of the player is enclosed by the destination:
		say "Though it may sound like [the other party of the player] is standing right next to you, he is not.";
		deny access.
		
Chapter 5- Everything Else

The Captain is a man. The Captain is in the Bridge.