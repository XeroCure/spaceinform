"SpaceInform" by William Pacini and Brian Gabin

Include Conversation Package by Eric Eve.


Chapter 1 - Building the Map

port is a direction. The opposite of port is starboard.
starboard is a direction. The opposite of starboard is port.
fore is a direction. The opposite of fore is aft.
aft is a direction. The opposite of aft is fore.

Instead of going South : say "Cardinal directions don't make sense on a spaceship".
Instead of going North : say "Cardinal directions don't make sense on a spaceship".
Instead of going East : say "Cardinal directions don't make sense on a spaceship".
Instead of going West : say "Cardinal directions don't make sense on a spaceship".
Instead of going Southwest : say "Cardinal directions don't make sense on a spaceship".
Instead of going Northwest : say "Cardinal directions don't make sense on a spaceship".
Instead of going Southeast : say "Cardinal directions don't make sense on a spaceship".
Instead of going Northeast : say "Cardinal directions don't make sense on a spaceship".

Instead of going fore in Mining Vessel : say "Remember what you're here for. The answer lies toward the Aft of the ship.".
Instead of going port in Mining Vessel : say "Remember what you're here for. The answer lies toward the Aft of the ship.".
Instead of going starboard in Mining Vessel : say "Remember what you're here for. The answer lies toward the Aft of the ship.".
 
The Mining Vessel is a room. The description is "It's a small two seat mining ship that you've lovingly named 'Ol' Faithful' after years of service. It currently sits docked at the [bold type]FORE[roman type] of the Space Hulk that the distress signal came from. If things go poorly, it may be your only means of escape.".

The Airlock is a door. It is aft of the Mining Vessel. It is fore of the Entry Commons. it is unlocked. The description is "A small bisected tube with a decompression chamber in the middle and large air tight blast doors seperateing the sections. You've seen hundreds of these before and can move right through without much hassle.".

The Entry Commons is a room. It is aft of the Airlock. The description is "The Entry commons is the first room anyone enters upon boarding the ship. Clean as ever, you would never have known that anything was amiss standing in the Entry Commons if not for the lack of people. The ship's census placard is hanging on the wall. ".

The Hallway is a room. It is port of the Entry Commons. The description is "A large passage  running along the port exterior of the ship. The monitors that line the outer wall simulate windows, and outside you can see the deserted asteroid field that you've been mining your whole life pass by. A line of small trees run along the monitors. [line break] [line break] There are three exits out of the Hallway towards the [bold type]AFT[roman type] of the ship you see a sign labeled Barracks. Towards the  [bold type]FORE[roman type] of the ship the sign reads entry commons. and about halfway down on the starboard you see a sign reading elevator, but where the elevator should be, there is a rather large pile of rubble.".

The Exercise Room is a room. It is starboard of the Entry Commons. The description is "[first time]Men in space need more exercise than those planet side. The lower gravity means that trivial tasks like walking to breakfast don't have as much of a strain on your body, and the Galactic marines need to be fighting fit where ever they land. You think that last thought may have come from a recruiting video you saw once. [line break][line break][only] A row of stationary bikes run along the walls and some exercise machines are in the center for non aerobic workouts. The room has the usual sweaty aroma of a gym".

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

Some Trees are scenery in the Hallway. The description is "While providing no practical use, the trees give an aesthetic comfort to the crew members and soldiers that helps stave off the dreaded Cabin Fever."

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

Instead of going aft in the Elevator, say "The console starts glowing red and says, 'I can't let you do that, Dave!' [line break][line break] Must be an old relic in the system you think to yourself."
Instead of going fore in the Elevator, say "The console starts glowing red and says, 'I can't let you do that ,Dave!' [line break][line break] Must be an old relic in the system you think to yourself."

Chapter 2 - Things and Scenery

Stationary Bikes are scenery. They are in the Exercise Room. "The bikes are bolted to the ground to avoid damage during ship maneuvers. They were FitCo brand, normal goverment issue crap, but they probably got the job done."

Some Exercise Machines are a supporter. They are fixed in place. The description is "Various machines to work out the different muscles were in the center of the room. All the machines seemed to be dry as a bone.".

Ship Census is scenery. it is in the Entry Commons. The description is "The Census Placard reads: [line break][line break]Ship Name: The Dominion's Hammer[line break]Ship Type: Evictor Class Military Transport [line break]Sister Ship: The Dominion's Anvil [line break]Crew Size: Six [line break]Personnel Capacity: Fifty Galactic Marines".

Engineer's Footlocker is a container. It is in the Crew's Quarters. It is closed. It is openable. It is fixed in place.The description is " A standard footlocker located at the bottom of his bunk. All the man's worldy possessions would have fit inside this roughly four square foot box. It appears to be bolted to the ground to avoid mid flight shuffling. Inscirbed on top it reads, 'Mason Wrightfield - First Engineer'".

Engineer's Desk is a supporter. It is in the Crew's Quarters. The description is "A crudely slapped together desk, sitting next to the Engineer's bunk. These affordances were only given to people who truly needed them when space is so limited."

Engineer's  Manual is an object. It is on the Engineer's desk. The description is "[first time] The Manual is sitting spread open on the desk with torn pages strewn about. Clearly someone must have been in a hurry. You tuck the pages back in as you see fit and close the book properly. [only]The cover reads 'Evictor Class Military Transport Maintenance Manual' in big golden letters across the cover. Inside it seems to contain schematics for each of the ships integral systams. Sadly, the book seems to be worn and torn , clearly heavily used and not well taken care of.".

Chapter 3 - Journals

Engineer's Journal Entry is a thing. It is in the Engineer's footlocker. The description is "I hate myself..."
Medic's Journal Entry is a thing. It is in the Engineer's footlocker. The description is "I hate myself..."
Captain's Journal Entry is a thing. It is in the Engineer's footlocker. The description is "I hate myself..."
Officer's Journal Entry is a thing. It is in the Engineer's footlocker. The description is "I hate myself..."
Pvt. Johansen's Journal Entry is a thing. It is in the Engineer's footlocker. The description is "I hate myself..."
Pvt. Wormund Journal Entry is a thing. It is in the Engineer's footlocker. The description is "I hate myself..."
Sgt.  Castle's Journal Entry is a thing. It is in the Engineer's footlocker. The description is "I hate myself..."


Chapter 4 - Scripted Events

After going aft in the Entry Commons: say "As you pass though the airlock into the Entry Commons, you hear a loud 'Slam!' from behind. Wheeling on the spot, you realize to your horrors that the blast doors have sealed you in, for seemingly no reason. After about fifteen seconds, you hear a man's voice. [line break][line break] 'Hello there, do not be alarmed.'[line break][line break] The  sound is coming from an intercom in the corner of the room. [line break][line break] 'I've only blocked off your passage because I'm a desperate man, who's been cooped up in this floating prison for far too long. I promise that if you can get me out I'll let you go. I'm directly above you in the Bridge but in order to get here, you'll need to restore the power to certain parts of the ship and get the elevator working. I'll try to keep you updated as best as possible, but communication is a bit spotty. Time is of the essence, I'll be waiting.' [line break][line break] With that the intercom cuts off and the room returns to an eerie silence."; now The Airlock is locked; now The Airlock is closed.

Chapter 5- Converstations

The captain-introduction-node is a convnode.
node-introduction for captain-introduction-node:
	say "This is the captain speaking."

Chapter 6 - Radio Communication

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
		
Chapter 7- Everything Else

The Captain is a man. The Captain is in the Bridge.
