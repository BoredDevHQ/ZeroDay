// Initialize all dialog variables as global
global.d_dev = [];
global.pearstore = [];
global.cam_diag1 = [];
global.welcome_dialog = [];
global.enterstarbucks = [];
global.pearstoreemployee = [];
global.starbucksemployee = [];
global.homeenter = [];
global.d_endmission1 = [];
global.d_startmission2 = [];
global.d_arena = [];
global.d_arenad2 = [];
global.d_enterdatacenter1 = [];
global.d_datacenter1enter = [];
global.d_startmission3 = [];
global.d_cat = [];
global.d_hack = [];
global.d_bossfinish = [];
global.d_serverroom = [];
global.d_datacenterhack = [];
global.d_escapedatacenter = [];
global.d_mission4start = [];
global.d_pearwelcome = [];
global.d_yapyap = [];
global.d_door_locked = [];
global.d_notthedev = [];
global.d_whereyallgoindawg = [];
global.d_dev2 = [];
global.d_rat = [];
// Dialog creation function
function create_dialog(_messages){
    if (instance_exists(obj_dialog)) return;
        
    var _inst = instance_create_depth(0, 0, 0, obj_dialog);
    _inst.messages = _messages;
    _inst.current_message = 0;
}

// Color definitions
global.char_colors = {
    "Congrats": c_yellow,
    "Chris": c_aqua,
    "Ghost": c_orange,
    "Narrator": c_white,
    "Unknown": c_white,
    "Pear Store": c_yellow,
    "Pear Employee": c_aqua,
    "Pear Store Employee": c_aqua,
    "Moonbucks": c_yellow,
    "Moonbucks Employee": c_aqua,
    "The ByteCave": c_yellow,
    "Datacenter": c_yellow,
    "Guard Bots": c_red,
    "Ghost (Radio)": c_orange,
    "Cat": c_orange,
    "Laptop": c_aqua,
    "Note To Self": c_grey,
    "Dev": c_red,
    "Info": c_aqua,
    "Crazy Man": c_red,
    "Jamal": c_purple,
}

global.pearstore = [
{
    name: "Pear Store",
    msg: "Entering The Pear Store"
},

]
global.cam_diag1 = [
{
    name: "Pear Store",
    msg: "Enter.."
},

]
global.welcome_dialog = [
  {
    name: "Ghost",
    msg: "Welcome to the city of dreams, Chris. Or... what's left of it."
  },
  {
    name: "Chris",
    msg: "Doesn't look very dreamy to me."
  },
  {
    name: "Ghost",
    msg: "It used to be. Before Pear got its claws in. Now it's all wires, eyes, and lies. Cameras on every corner. People vanishing overnight."
  },
  {
    name: "Chris",
    msg: "I've seen the headlines. But I didn't think it was this bad."
  },
  {
    name: "Ghost",
    msg: "It's worse. They own everything. The media, the police, even the government. They're like a shadow, always watching, always listening."
  },
  {
    name: "Chris",
    msg: "You want me to help take them down?"
  },
  {
    name: "Ghost",
    msg: "No. I want you to ruin them. From the inside out. Hack into their systems, expose their secrets, and make them pay for what they've done to this city."
  },
  {
    name: "Ghost",
    msg: "But first... you'll need a decent laptop. No spyware shit. And while you're out—get me a coffee. Black. No sugar. This city's cold enough."
  }
]
global.pearstore = [
{
    name: "Pear Store",
    msg: "Entering the Pear Store"
},

]
global.enterstarbucks = [
{
    name: "Moonbucks",
    msg: "Entering Moonbucks"
},

]


global.starbucksemployee = [
  {
    name: "Moonbucks Employee",
    msg: "Welcome to Moonbucks! Hmm... you must be new. Our system didn't auto-tag your face when you walked in."
  },
  {
    name: "Chris",
    msg: "Auto-tag? What kind of system does that?"
  },
  {
    name: "Moonbucks Employee",
    msg: "Oh! Just our SmileSense Loyalty AI. It logs your face, ID, and caffeine preferences for faster service next time!"
  },
  {
    name: "Chris",
    msg: "Sounds convenient. Also mildly horrifying."
  },
  {
    name: "Moonbucks Employee",
    msg: "Haha! You're funny. Most guests love it once they stop asking questions."
  },
  {
    name: "Chris",
    msg: "Yeah... I'll take two black coffee's, please. No sugar."
  },
  {
    name: "Moonbucks Employee",
    msg: "Coming right up! Treating someone special?"
  },
  {
    name: "Chris",
    msg: "You could say that. My new boss."
  },
  {
    name: "Moonbucks Employee",
    msg: "How exciting! Hope they're nice. We love supporting local disruptors!"
  },
  {
    name: "Moonbucks Employee",
    msg: "Here you go! Your drinks and your digital receipt have both been logged to your Civic ID."
  },
  {
    name: "Chris",
    msg: "Great... thanks."
  },

];
global.homeenter = [
{
    name: "The ByteCave",
    msg: "Entering The ByteCave"
},
]
global.d_endmission1 = [
  {
    name: "Ghost",
    msg: "Well, look at that! A brand-new PearBook Pro. Kinda ironic buying gear from the same corp we're trying to burn down... but no worries—we'll just root it and slap Penguin on it."
  },
  {
    name: "Chris",
    msg: "Yeah... true. Oh, and here's your black coffee, no sugar."
  },
  {
    name: "Ghost",
    msg: "Ah, sweet. Nothing like government-tracked caffeine. Give me a few minutes to get this PearBook set up, alright?"
  },
  {
    name: "Congrats",
    msg: "Mission 1 'The Intro' finished."
  }
];
global.d_startmission2 = [
  {
    name: "Ghost",
    msg: "Alright, your PearBook's up and running. But before I throw you into real jobs, I need to know you can actually fight."
  },
  {
    name: "Chris",
    msg: "I can handle myself. No doubt."
  },
  {
    name: "Ghost",
    msg: "Then let's test that. I've got a few combat bots, ripped ‘em right out of a Pear security crate. Let's see if you survive."
  },
  {
    name: "Chris",
    msg: "Bring it on. Those bots won't know what hit ‘em."
  }
];
global.d_arena = [
  {
    name: "Ghost",
    msg: "Welcome to the arena. Don't mind the blood... Our last recruit didn't exactly pass the test."
  },
  {
    name: "Chris",
    msg: "...What."
  },
  {
    name: "Ghost",
    msg: "This isn't a game, Chris. If you mess up, you're a liability. And liabilities don't walk out of here."
  },
  {
    name: "Chris",
    msg: "Right. Let's just get this over with."
  },
  {
    name: "Ghost",
    msg: "Good attitude. Hit 'SPACE' to attack the bots—and please don't explode like the last guy. Took me hours to get his brain off the walls."
  },
  {
    name: "Chris",
    msg: "I guess you'll have to spend more hours cleaning, it's still all over the walls, and the floor, and the ceiling, and the-"
  },  
  {
    name: "Ghost",
    msg: "Just shut up and fight, alright? Stop judging me."
  },  
];
global.d_arenad2 = [
  {
    name: "Ghost",
    msg: "Holy shit. You actually survived. That was... brutal. In the best way."
  },
  {
    name: "Chris",
    msg: "That 'holy shit'... you really thought I was going to die, didn't you?"
  },
  {
    name: "Ghost",
    msg: "Honestly? Yeah. You and the last guy had a similar look in your eyes. But hey—you made it."
  },
  {
    name: "Chris",
    msg: "Fuck, you."
  },
  {
    name: "Note To Self",
    msg: "Ghost is one hell of an asshole. He knew I might die and still sent me in. I won't forget that."
  },
  {
    name: "Congrats",
    msg: "Mission 2 'Fuck, you.' finished."
  }
];

global.d_enterdatacenter1 = [
{
    name: "Datacenter",
    msg: "Entering the datacenter."
},
]

global.d_datacenter1 = [
  {
    name: "Guard Bots",
    msg: "EXTERMINATE. EXTERMINATE. EXTERMINATE.",
    sound: exterminate
  },
  {
    name: "Chris",
    msg: "Oh fuck."
  },
  {
    name: "Ghost (Radio)",
    msg: "Uh... hey. So... I might have known there were bots in there. Thought you'd be fine. My bad."
  },
  {
    name: "Chris",
    msg: "Are you fucking kidding me?! You absolute piece of—"
  },
  {
    name: "Ghost (Radio)",
    msg: "Look, no time to yell at me—just do what you did in the arena. Keep moving. Don't die."
  },
  {
    name: "Chris",
    msg: "You're buying me a beer after this. And a fucking funeral if I don't make it."
  },
  {
    name: "Guard Bots",
    msg: "EXTERMINATE. EXTERMINATE. EXTERMINATE.",
    sound: exterminate
  }
];

global.d_datacenterbossfight1 = [
  {
    name: "Chris",
    msg: "Oh hell NO. WHAT THE FUCK IS THAT?!"
  },
  {
    name: "Ghost (Radio)",
    msg: "That monstrosity? That's the metal nightmare that'll probably kill you in two hits. Ever heard of ‘Slash and Dash'? No? Well... welcome to hell."
  }
];

global.d_datacenter2 = [
{
    name: "Datacenter",
    msg: "Entering the datacenter",
},
]
global.d_startmission3 = [
  {
    name: "Ghost",
    msg: "Alright, this time it's real. Got a Pear datacenter up north—just past the bridge."
  },
  {
    name: "Chris",
    msg: "Sounds... promising. What's the catch?"
  },
  {
    name: "Ghost",
    msg: "Few guards, low security. Should be a quick in-and-out for a rookie like you. But don't get cocky."
  },
  {
    name: "Chris",
    msg: "I like the sound of that. Let's get it done."
  },
  {
    name: "Ghost",
    msg: "Good. I'll patch you in with intel over comms. Stay sharp."
  }
];
global.d_cat = [
{
    name: "Cat",
    msg: "Meow",
},
]
global.d_hack = [
{
    name: "Laptop",
    msg: "Hack started, survive until this is finished.",

},
]
global.d_bossfinish = [
  {
    name: "Ghost (Radio)",
    msg: "Nice work. Didn't think you had it in you."
  },
  {
    name: "Chris",
    msg: "Almost died back there, and all I get is ‘Nice work'? Really?"
  },
  {
    name: "Ghost (Radio)",
    msg: "Alright, alright—I'll buy you that beer. Anyway, see that door? I got it open while you were dodging death. Go through, and you'll find the server room."
  }
];
global.d_serverroom = [
  {
    name: "Ghost (Radio)",
    msg: "You in the server room?"
  },
  {
    name: "Chris",
    msg: "Yeah, just got here."
  },
  {
    name: "Ghost (Radio)",
    msg: "Good. See that laptop in the center? Crack it open and start the hack. I'll handle the backend. Heads up—don't get too comfortable. You're about to attract some unwanted attention."
  }
];
global.d_datacenterhack = [
  {
    name: "Ghost (Radio)",
    msg: "And... I'm in. Wiped their files clean. Stashed a few gems for a Pear expose video too."
  },
  {
    name: "Chris",
    msg: "Took you long enough. Seriously, why does every mission feel like you're trying to get me killed?"
  },
  {
    name: "Ghost (Radio)",
    msg: "Good question. Now get moving—bots are swarming your way. Unless you're looking to become another statistic, I'd start sprinting for that exit."
  }
];
global.d_escapedatacenter = [
  {
    name: "Ghost (Radio)",
    msg: "Great, you're out."
  },
  {
    name: "Chris",
    msg: "Yeah, but those bots you warned about? They're now in front of me, and behind me, and... well, everywhere. They followed me out."
  },
  {
    name: "Ghost (Radio)",
    msg: "FUCK! Fight them off and get your ass over here. If they're still behind you when you arrive, I'm not opening the door."
  },
  {
    name: "Chris",
    msg: "Yeah yeah, fuck you too."
  }
];
global.d_mission3end = [
  {
    name: "Ghost",
    msg: "Welcome back, mate. What you just pulled off changed a lot—saved us from at least six break-ins into Pear's datacenters. Some kid left API keys here that gave me access to even more. I wiped those too, and man, I found some seriously disturbing shit."
  },
  {
    name: "Chris",
    msg: "Fuck yes. I'm NOT doing anything like that again."
  },
  {
    name: "Ghost",
    msg: "Haha. Oh, and I put together a video exposing Pear with all the footage I grabbed from their servers. Want to see it?"
  },
  {
    name: "Chris",
    msg: "Hell yeah."
  },
  {
    name: "Congrats",
    msg: "Mission 3 'I am NOT doing that again.' finished."
  }
];
global.d_mission4start = [
  {
    name: "Chris",
    msg: "Sup. So, I hacked the datacenter, we made that video... what's next?"
  },
  {
    name: "Ghost",
    msg: "You know Pear HQ, right?"
  },
  {
    name: "Chris",
    msg: "Yeah... oh no."
  },
  {
    name: "Ghost",
    msg: "There's a dev in there. We need him—he's got full access to their main servers. Only him and the CEO have, really."
  },
  {
    name: "Chris",
    msg: "You're just trying to get me killed, huh?"
  },
  {
    name: "Ghost",
    msg: "Maybe."
  },
  {
    name: "Chris",
    msg: "Fuck off."
  },
  {
    name: "Ghost",
    msg: "Relax, I'm kidding."
  },
  {
    name: "Note To Self",
    msg: "Ghost's jokes are terrible."
  },
  {
    name: "Chris",
    msg: "Fuck you."
  },
  {
    name: "Ghost",
    msg: "Anyway, you better get moving before the dev disappears. Good fucking luck—you're gonna need it."
  }
];
global.d_dev = [
  {
    name: "Chris",
    msg: "Hey—hello? HEY!",
  },
  {
    name: "Dev",
    msg: "What the fuck? Who are you?",
  },
  {
    name: "Chris",
    msg: "The person who'll leak your little affair if you don't come quietly.",
  },
  {
    name: "Dev",
    msg: "Affair? You're bluffing.",
  },
  {
    name: "Chris",
    msg: "Hell no. I know all about you and Jamal cheating on your girlfriend Sarah.",
  },
  {
    name: "Dev",
    msg: "Oh fu—Fine, I'm coming. Just don't tell anyone, please!",
  },
  {
    name: "Chris",
    msg: "Good. Shut up, ditch your devices here. If anyone asks, say we're on a coffee break.",
  },
  {
    name: "Dev",
    msg: "Y-yes, sir.",
  }
];
global.d_pearwelcome = [
  {
    name: "Pear Employee",
    msg: "Welcome to Pear. How can I help you today?"
  },
  {
    name: "Chris",
    msg: "Uh... I have an appointment. Yeah, an appointment."
  },
  {
    name: "Pear Employee",
    msg: "Alright. With whom?"
  },
  {
    name: "Chris",
    msg: "I believe the name was Hanssen."
  },
  {
    name: "Pear Employee",
    msg: "Hanssen... The head dev? Let me check."
  },
  {
    name: "Pear Employee",
    msg: "I don't see any appointments with him scheduled today."
  },
  {
    name: "Chris",
    msg: "Oh, I messaged him about 30 minutes ago. The system probably hasn't updated yet."
  },
  {
    name: "Pear Employee",
    msg: "Alright. Head through the door on your left, then take the second right."
  }
];
global.d_yapyap = [
{
    name: "Pear Employee",
    msg: "As I told you, the door to your left."
  },
]
global.d_door_locked = [
{
    name: "Info",
    msg: "This door seems to be locked."
},
]
global.d_notthedev = [
{
    name: "Chris",
    msg: "Hey are you uh Han- Hanssen?"
},
{
    name: "Jamal",
    msg: "No he's at the back. in the corner."
},
]
global.d_whereyallgoindawg = [
{
    name: "Dev",
    msg: "Where are y'all going?"
},
{
    name: "Chris",
    msg: "Just getting some coffee."
},
]
global.d_dev2 = [
{
    name: "Chris",
    msg: "Go on get moving fatty."
},

]
global.d_dev3 = [
{
    name: "Pear Employee",
    msg: "Where are you guys going?"
},
{
    name: "Dev",
    msg: "Just getting coffee, we'll be back soon."
},
]
global.d_dev4 = [
{
    name: "Chris",
    msg: "The fuck? What are you doing here Ghost?"
},
{
    name: "Dev",
    msg: "Who's this dude?"
},
{
    name: "Ghost",
    msg: "Get in the car. Now, both of you."
},
]
global.d_rat = [
{
    name: "Chris",
    msg: "why are you standing next to a rat? Kinda crazy honestly."
},
{
    name: "Crazy Man",
    msg: "Crazy? I was Crazy once."
},
{
    name: "Crazy Man",
    msg: "They locked me in a room."
},
{
    name: "Crazy Man",
    msg: "A rubber room."
},
{
    name: "Crazy Man",
    msg: "A rubber room with rats."
},
{
    name: "Crazy Man",
    msg: "Rats make me crazy."
},
{
    name: "Crazy Man",
    msg: "Crazy? I was Crazy once."
},
{
    name: "Crazy Man",
    msg: "They locked me in a room."
},
{
    name: "Crazy Man",
    msg: "A rubber room."
},
{
    name: "Crazy Man",
    msg: "A rubber room with rats."
},
{
    name: "Crazy Man",
    msg: "Rats make me crazy."
},
{
    name: "Crazy Man",
    msg: "Crazy? I was Crazy once."
},
{
    name: "Crazy Man",
    msg: "They locked me in a room."
},
{
    name: "Crazy Man",
    msg: "A rubber room."
},
{
    name: "Crazy Man",
    msg: "A rubber room with rats."
},
{
    name: "Crazy Man",
    msg: "Rats make me crazy."
},
{
    name: "Crazy Man",
    msg: "Crazy? I was Crazy once."
},
{
    name: "Crazy Man",
    msg: "They locked me in a room."
},
{
    name: "Crazy Man",
    msg: "A rubber room."
},
{
    name: "Crazy Man",
    msg: "A rubber room with rats."
},
{
    name: "Crazy Man",
    msg: "Rats make me crazy."
},
{
    name: "Crazy Man",
    msg: "Crazy? I was Crazy once."
},
{
    name: "Crazy Man",
    msg: "They locked me in a room."
},
{
    name: "Crazy Man",
    msg: "A rubber room."
},
{
    name: "Crazy Man",
    msg: "A rubber room with rats."
},
{
    name: "Crazy Man",
    msg: "Rats make me crazy."
},
{
    name: "Crazy Man",
    msg: "Crazy? I was Crazy once."
},
{
    name: "Crazy Man",
    msg: "They locked me in a room."
},
{
    name: "Crazy Man",
    msg: "A rubber room."
},
{
    name: "Crazy Man",
    msg: "A rubber room with rats."
},
{
    name: "Crazy Man",
    msg: "Rats make me crazy."
},
{
    name: "Crazy Man",
    msg: "Crazy? I was Crazy once."
},
{
    name: "Crazy Man",
    msg: "They locked me in a room."
},
{
    name: "Crazy Man",
    msg: "A rubber room."
},
{
    name: "Crazy Man",
    msg: "A rubber room with rats."
},
{
    name: "Crazy Man",
    msg: "Rats make me crazy."
},
{
    name: "Crazy Man",
    msg: "Crazy? I was Crazy once."
},
{
    name: "Crazy Man",
    msg: "They locked me in a room."
},
{
    name: "Crazy Man",
    msg: "A rubber room."
},
{
    name: "Crazy Man",
    msg: "A rubber room with rats."
},
{
    name: "Crazy Man",
    msg: "Rats make me crazy."
},
{
    name: "Crazy Man",
    msg: "Crazy? I was Crazy once."
},
{
    name: "Crazy Man",
    msg: "They locked me in a room."
},
{
    name: "Crazy Man",
    msg: "A rubber room."
},
{
    name: "Crazy Man",
    msg: "A rubber room with rats."
},
{
    name: "Crazy Man",
    msg: "Rats make me crazy."
},
{
    name: "Crazy Man",
    msg: "Crazy? I was Crazy once."
},
{
    name: "Crazy Man",
    msg: "They locked me in a room."
},
{
    name: "Crazy Man",
    msg: "A rubber room."
},
{
    name: "Crazy Man",
    msg: "A rubber room with rats."
},
{
    name: "Crazy Man",
    msg: "Rats make me crazy."
},
{
    name: "Crazy Man",
    msg: "Crazy? I was Crazy once."
},
{
    name: "Crazy Man",
    msg: "They locked me in a room."
},
{
    name: "Crazy Man",
    msg: "A rubber room."
},
{
    name: "Crazy Man",
    msg: "A rubber room with rats."
},
{
    name: "Crazy Man",
    msg: "Rats make me crazy."
},
{
    name: "Crazy Man",
    msg: "Crazy? I was Crazy once."
},
{
    name: "Crazy Man",
    msg: "They locked me in a room."
},
{
    name: "Crazy Man",
    msg: "A rubber room."
},
{
    name: "Crazy Man",
    msg: "A rubber room with rats."
},
{
    name: "Crazy Man",
    msg: "Rats make me crazy."
},
{
    name: "Crazy Man",
    msg: "Crazy? I was Crazy once."
},
{
    name: "Crazy Man",
    msg: "They locked me in a room."
},
{
    name: "Crazy Man",
    msg: "A rubber room."
},
{
    name: "Crazy Man",
    msg: "A rubber room with rats."
},
{
    name: "Crazy Man",
    msg: "Rats make me crazy."
},
{
    name: "Crazy Man",
    msg: "Crazy? I was Crazy once."
},
{
    name: "Crazy Man",
    msg: "They locked me in a room."
},
{
    name: "Crazy Man",
    msg: "A rubber room."
},
{
    name: "Crazy Man",
    msg: "A rubber room with rats."
},
{
    name: "Crazy Man",
    msg: "Rats make me crazy."
},
{
    name: "Crazy Man",
    msg: "Crazy? I was Crazy once."
},
{
    name: "Crazy Man",
    msg: "They locked me in a room."
},
{
    name: "Crazy Man",
    msg: "A rubber room."
},
{
    name: "Crazy Man",
    msg: "A rubber room with rats."
},
{
    name: "Crazy Man",
    msg: "Rats make me crazy."
},
{
    name: "Crazy Man",
    msg: "Crazy? I was Crazy once."
},
{
    name: "Crazy Man",
    msg: "They locked me in a room."
},
{
    name: "Crazy Man",
    msg: "A rubber room."
},
{
    name: "Crazy Man",
    msg: "A rubber room with rats."
},
{
    name: "Crazy Man",
    msg: "Rats make me crazy."
},
{
    name: "Crazy Man",
    msg: "Crazy? I was Crazy once."
},
{
    name: "Crazy Man",
    msg: "They locked me in a room."
},
{
    name: "Crazy Man",
    msg: "A rubber room."
},
{
    name: "Crazy Man",
    msg: "A rubber room with rats."
},
{
    name: "Crazy Man",
    msg: "Rats make me crazy."
},
{
    name: "Crazy Man",
    msg: "Crazy? I was Crazy once."
},
{
    name: "Crazy Man",
    msg: "They locked me in a room."
},
{
    name: "Crazy Man",
    msg: "A rubber room."
},
{
    name: "Crazy Man",
    msg: "A rubber room with rats."
},
{
    name: "Crazy Man",
    msg: "Rats make me crazy."
},
{
    name: "Crazy Man",
    msg: "Crazy? I was Crazy once."
},
{
    name: "Crazy Man",
    msg: "They locked me in a room."
},
{
    name: "Crazy Man",
    msg: "A rubber room."
},
{
    name: "Crazy Man",
    msg: "A rubber room with rats."
},
{
    name: "Crazy Man",
    msg: "Rats make me crazy."
},
{
    name: "Crazy Man",
    msg: "Crazy? I was Crazy once."
},
{
    name: "Crazy Man",
    msg: "They locked me in a room."
},
{
    name: "Crazy Man",
    msg: "A rubber room."
},
{
    name: "Crazy Man",
    msg: "A rubber room with rats."
},
{
    name: "Crazy Man",
    msg: "Rats make me crazy."
},
{
    name: "Crazy Man",
    msg: "Crazy? I was Crazy once."
},
{
    name: "Crazy Man",
    msg: "They locked me in a room."
},
{
    name: "Crazy Man",
    msg: "A rubber room."
},
{
    name: "Crazy Man",
    msg: "A rubber room with rats."
},
{
    name: "Crazy Man",
    msg: "Rats make me crazy."
},
{
    name: "Crazy Man",
    msg: "Crazy? I was Crazy once."
},
{
    name: "Crazy Man",
    msg: "They locked me in a room."
},
{
    name: "Crazy Man",
    msg: "A rubber room."
},
{
    name: "Crazy Man",
    msg: "A rubber room with rats."
},
{
    name: "Crazy Man",
    msg: "Rats make me crazy."
},
{
    name: "Crazy Man",
    msg: "Crazy? I was Crazy once."
},
{
    name: "Crazy Man",
    msg: "They locked me in a room."
},
{
    name: "Crazy Man",
    msg: "A rubber room."
},
{
    name: "Crazy Man",
    msg: "A rubber room with rats."
},
{
    name: "Crazy Man",
    msg: "Rats make me crazy."
},
{
    name: "Crazy Man",
    msg: "Crazy? I was Crazy once."
},
{
    name: "Crazy Man",
    msg: "They locked me in a room."
},
{
    name: "Crazy Man",
    msg: "A rubber room."
},
{
    name: "Crazy Man",
    msg: "A rubber room with rats."
},
{
    name: "Crazy Man",
    msg: "Rats make me crazy."
},
{
    name: "Crazy Man",
    msg: "Crazy? I was Crazy once."
},
{
    name: "Crazy Man",
    msg: "They locked me in a room."
},
{
    name: "Crazy Man",
    msg: "A rubber room."
},
{
    name: "Crazy Man",
    msg: "A rubber room with rats."
},
{
    name: "Crazy Man",
    msg: "Rats make me crazy."
},
{
    name: "Crazy Man",
    msg: "Crazy? I was Crazy once."
},
{
    name: "Crazy Man",
    msg: "They locked me in a room."
},
{
    name: "Crazy Man",
    msg: "A rubber room."
},
{
    name: "Crazy Man",
    msg: "A rubber room with rats."
},
{
    name: "Crazy Man",
    msg: "Rats make me crazy."
},
{
    name: "Crazy Man",
    msg: "Crazy? I was Crazy once."
},
{
    name: "Crazy Man",
    msg: "They locked me in a room."
},
{
    name: "Crazy Man",
    msg: "A rubber room."
},
{
    name: "Crazy Man",
    msg: "A rubber room with rats."
},
{
    name: "Crazy Man",
    msg: "Rats make me crazy."
},
{
    name: "Crazy Man",
    msg: "Crazy? I was Crazy once."
},
{
    name: "Crazy Man",
    msg: "They locked me in a room."
},
{
    name: "Crazy Man",
    msg: "A rubber room."
},
{
    name: "Crazy Man",
    msg: "A rubber room with rats."
},
{
    name: "Crazy Man",
    msg: "Rats make me crazy."
},
{
    name: "Crazy Man",
    msg: "Actually, you're crazy for letting me go for this long."
}
]

