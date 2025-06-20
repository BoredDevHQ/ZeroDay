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
    msg: "I'm Ghost, welcome to the city of dreams Chris! At least, that's what it was."
},
{
    name: "Chris",
    msg: "How so?"
},
{
    name: "Ghost",
    msg: "Pear Computers, the huge tech company took over the entire government and now everyone gets monitored 24/7, camera's are everywhere and people have had enough, including us. So we have to take action."
},
{
    name: "Chris",
    msg: "Take action, how? What can we do if they monitor us all?"
},
{
    name: "Ghost",
    msg: "We have to take action by attacking from inside out, breaking their servers and cause chaos in the company till it crumbles. Go have a look around in town, come back here when you have a nice laptop, and get me some coffee, will ya?"
    
},
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


global.pearstoreemployee = [
{
    name: "Pear Store Employee",
    msg: "Welcome to the pear store! Looking for a Pearbook Air or a Pearbook Pro?"
},
{
    name: "Chris",
    msg: "Pearbook Pro please."
},
{
    name: "Pear Store Employee",
    msg: "That will be 2 of your kidneys then!"
},
{
    name: "Chris",
    msg: "Excuse me?"
},
{
    name: "Pear Store Employee",
    msg: "Just kidding, EUR3,499 Please. "
},
{
    name: "Chris",
    msg: "Here ya go!"
},
{
    name: "Pear Store Employee",
    msg: "Thank you! Enjoy your new PearBook pro and make sure to give us all your personal data!"
},
{
    name: "Chris",
    msg: "Yeah yeah, sure.. Weirdo."
},
{
    name: "Note To Self",
    msg: "Pear is way too data hungry. So data hungry that they're making employees ask to give them all your data. This shit is fucked and it needs to be stopped."
},
]

global.starbucksemployee = [
{
    name: "Moonbucks Employee",
    msg: "Welcome to Moonbucks! Are you new here? Our system doesn't recognize you."
},
{
    name: "Chris",
    msg: "Yeah, i am. But what do you mean 'Our system doesn't recognize you.' What kind of system do y'all have?"
},
{
    name: "Moonbucks Employee",
    msg: "First off, welcome to the city! Anyways, we have a system that stores your face, name, civilian ID whenever you order something so we know your regular order each time you come in!"
},
{
    name: "Chris",
    msg: "Amazing idea, bit against privacy though."
},
{
    name: "Moonbucks Employee",
    msg: "Privacy, what's that?"
},
{
    name: "Chris",
    msg: "You don't know?- Wha- Never mind."
},
{
    name: "Note To Self",
    msg: "Are they brainwashing people? He was so happy about being tracked, and... he doesn't even know what privacy is?!"
},
{
    name: "Chris",
    msg: "Could i get two chocolate frappe's?"
},
{
    name: "Moonbucks Employee",
    msg: "Of course! Taking some coffee with you for a friend of yours?"
},
{
    name: "Chris",
    msg: "Yeah! I'm taking it with me for my new boss."
},
{
    name: "Moonbucks Employee",
    msg: "Sweet! I hope you enjoy your time at your new job."
},
{
    name: "Moonbucks Employee",
    msg: "And.. here you go! Enjoy your frappe!"
},
{
    name: "Chris",
    msg: "Thanks so much! and you enjoy the rest of your shift!"
},

]
global.homeenter = [
{
    name: "The ByteCave",
    msg: "Entering The ByteCave"
},
]
global.d_endmission1 = [
{
    name: "Ghost",
    msg: "Look at that!!! Nice PearBook Pro, kind of weird to be buying products from the company we're taking down.. But we'll just root it and put Penguin on it."
},
{
    name: "Chris",
    msg: "Yeah.. True. Also here's your chocolate frappe. "
},
{
    name: "Ghost",
    msg: "Thanks mate. I'll go set up that PearBook of yours. Give me a few minutes, aight?"
},
{
    name: "Congrats",
    msg: "Mission 1 'The Intro' finished."
},

]
global.d_startmission2 = [
{
    name: "Ghost",
    msg: "Well, i finished setting up your computer, but before you start doing actual jobs, we need to know you are capable of fighting."
},
{
    name: "Chris",
    msg: "I'm capable, for sure. "
},
{
    name: "Ghost",
    msg: "Alright, if you're so confident, how about we put it to the test? I'll let you fight some bots i stole from Pear, let's see if you survive it or not."
},
{
    name: "Chris",
    msg: "Great, trust me, those bots wont last long."
},

]
global.d_arena = [
{
    name: "Ghost",
    msg: "Welcome to the arena. Sorry for the blood and bones.. Our last recruit wasn't so lucky.."
},
{
    name: "Chris",
    msg: "What."
},
{
    name: "Ghost",
    msg: "Well, you're either gonna have to fight or die. We can't have any information about this organization get out. If you leave us, you die."
},
{
    name: "Chris",
    msg: "Great.. Let's just get over with it."
},
{
    name: "Ghost",
    msg: "Amazing. Use your 'SPACE' key to attack the bots, and please don't end up like the last guy.. It took hours to clean up those blood stains."
},
]
global.d_arenad2 = [
{
    name: "Ghost",
    msg: "Holy shit. How did you- Nevermind. That was.. EPIC!!! Absolutely insane stuff."
},
{
    name: "Chris",
    msg: "With that 'holy shit' you meant you thought that i was going to die? That's messed up. I mean that last recruit man.. "
},
{
    name: "Ghost",
    msg: "Shut up... But yeah, i kinda did think you would die.."
},
{
    name: "Chris",
    msg: "Fuck, you."
},
{
    name: "Note To Self",
    msg: "Ghost is one hell of an asshole! He thought I would die here and still made me go. I am for sure not forgetting this bullshit."
},
{
    name: "Congrats",
    msg: "Mission 2 'Fuck, you.' finished."
},
]

global.d_enterdatacenter1 = [
{
    name: "Datacenter",
    msg: "Entering the datacenter."
},
]

global.d_datacenter1enter = [
{
    name: "Guard Bots",
    msg: "EXTERMINATE, EXTERMINATE, EXTERMINATE",
    sound: exterminate
},
{
    name: "Chris",
    msg: "Oh fuck."
},
{
    name: "Ghost (Radio)",
    msg: "Hey, it's me, Ghost. I might have expected this.. Sorry for not telling you sooner..."
},
{
    name: "Chris",
    msg: "The fuck?! You fucking asshole!"
},

{
    name: "Ghost (Radio)",
    msg: "Sorry.. Try to remember how you fought those bots in the arena, you'll need it."
},
{
    name: "Chris",
    msg: "You better be buying me a beer after this fucker."
},
{
    name: "Guard Bots",
    msg: "EXTERMINATE, EXTERMINATE, EXTERMINATE",
    sound: exterminate
},
]

global.d_datacenterbossfight1 = [
{
    name: "Chris",
    msg: "Oh hell NO. WHAT THE FUCK IS THAT"
},
{
    name: "Ghost (Radio)",
    msg: "Oh that's the thing that will probably kill you. Ever heard of something called 'Slash and dash'? If not, tough luck."
},
]

global.d_datacenter2 = [
{
    name: "Datacenter",
    msg: "Entering the datacenter",
},
]
global.d_startmission3 = [
{
    name: "Ghost",
    msg: "Hey. I have a real mission for you now.",
},
{
    name: "Chris",
    msg: "Hm? I'm listening."
},
{
    name: "Ghost",
    msg: "There's a Pear datacenter up north, just over the bridge. It seems relatively safe for a first timer like you. It should be a quick in and out hack with little guards.",
},
{
    name: "Chris",
    msg: "Seems.. doable."
},
{
    name: "Ghost",
    msg: "Alright, get going then. I'll give you extra information via comms when needed.",
},
]
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
    msg: "Nice work!",

},
{
    name: "Chris",
    msg: "I almost died and the first thing i hear is 'Nice work!'? Really?",

},
{
    name: "Ghost",
    msg: "I'll buy you a coffee or something, anyways, you see that door? I got it open while you were fighting, just go through there and you should arrive in some kind of server room.",

},
]
global.d_serverroom = [
{
    name: "Ghost (Radio)",
    msg: "Howdy, are you in the server room?",

},
{
    name: "Chris",
    msg: "Yep.",

},
{
    name: "Ghost (Radio)",
    msg: "Great. You see that laptop there in the center? Open it up for me. I'll do the rest, I suggest getting ready to fight though.",
},
]
global.d_datacenterhack = [
{
    name: "Ghost (Radio)",
    msg: "And I'm in. I deleted everything. Stored some extra for a video I'll make to expose Pear too.",

},
{
    name: "Chris",
    msg: "Took you long enough, anyways what is it with you making it that I basically almost die every mission you give me?",

},
{
    name: "Ghost (Radio)",
    msg: "Good question. I suggest you get out of there before you really die. I see bots upcoming. I suggest you start running to that door, unless you have a death wish."
}
]
global.d_escapedatacenter = [
{
    name: "Ghost (Radio)",
    msg: "Great, you're out.",

},
{
    name: "Chris",
    msg: "Yeah but those bots you were talking about too.",

},
{
    name: "Ghost (Radio)",
    msg: "FUCK! Fight them off and get the fuck over here. If they're still behind you when you're here i'm not letting you in.",
},
{
    name: "Chris",
    msg: "Yeah yeah, fuck you too.",

},
]
global.d_mission3end = [
{
    name: "Ghost",
    msg: "Welcome back mate. What you just did changed so, so much. This saved us around 6 break ins into Pear's datacenters. Some kid left API keys in here that go into some other datacenters and i hacked into those and completely wiped them. I found some real disturbing shit on them too-",

},
{
    name: "Chris",
    msg: "Fuck yes. I am NOT doing something like that again.",

},
{
    name: "Ghost",
    msg: "Haha. Also I made a nice video exposing Pear with all those videos I found on their servers. Wanna watch?",
},
{
    name: "Chris",
    msg: "Hell yeah.",

},
{
    name: "Congrats",
    msg: "Mission 3 'I am NOT doing that again.' Finished.",

},
]
global.d_mission4start = [
{
    name: "Chris",
    msg: "Sup. So, I hacked into the datacenter, we made that video.. What's next?"
},
{
    name: "Ghost",
    msg: "Well.. You know the Pear HQ?"
},
{
    name: "Chris",
    msg: "Yeah- Oh no.. "
},
{
    name: "Ghost",
    msg: "Yeah. There's a dev in there, we need him, he has all the keys so we can break into their main servers. He’s the only one who can access it besides the CEO."
    
},
{
    name: "Chris",
    msg: "You really want me dead huh?"
    
},
{
    name: "Ghost",
    msg: "Maybe."
    
},
{
    name: "Chris",
    msg: "The fuck?"
    
},
{
    name: "Ghost",
    msg: "Just kidding, calm down."
    
},
{
    name: "Note To Self",
    msg: "Ghost's jokes suck."
    
},
{
    name: "Chris",
    msg: "Fuck you."
    
},
{
    name: "Ghost",
    msg: "Well I think you best start moving before he's gone. Good fucking luck, you’ll need it."
    
},
]
global.d_dev = [
{
    name: "Chris",
    msg: "He- Hello?... HEY",
    shown: false
},
{
    name: "Dev",
    msg: "The fuck? Who are you?",
    shown: false
},
{
    name: "Chris",
    msg: "The person that will leak that affair of yours if you dont quickly come with me.",
    shown: false
},
{
    name: "Dev",
    msg: "Affair? You- You're bluffing.",
    shown: false
},
{
    name: "Chris",
    msg: "Hell no, i know all about you and Jamal cheating on your girlfriend Hetty.",
    shown: false
},
{
    name: "Dev",
    msg: "Oh fu- Fine i'll come with you.. don't tell anyone about this, PLEASE.",
    shown: false
},
{
    name: "Chris",
    msg: "Alright, shut your mouth, don't tell anyone, keep all your devices here and if people ask, tell we are going on a coffee break.",
    shown: false
},
{
    name: "Dev",
    msg: "Y-yes sir.",
    shown: false
},
]
global.d_pearwelcome = [
{
    name: "Pear Employee",
    msg: "Welcome to Pear! How may i help you today?"
},
{
    name: "Chris",
    msg: "I uh.. Had an appointment. Yeah an appointment."
},
{
    name: "Pear Employee",
    msg: "Alright, with who?"
},
{
    name: "Chris",
    msg: "I believe the name was Hanssen?"
},
{
    name: "Pear Employee",
    msg: "Hanssen.. The head dev here?"
},
{
    name: "Chris",
    msg: "Yeah."
},
{
    name: "Pear Employee",
    msg: "I don't see any appointments with him planned today..."
},
{
    name: "Chris",
    msg: "Oh don't worry i messaged him like 30 minutes ago for this, the system probably isn't updated yet.."
},
{
    name: "Pear Employee",
    msg: "Alright then.. head through the door on your left and then take the second right."
},
]
global.d_yapyap = [
{
    name: "Pear Employee",
    msg: "As i told you the door to your left."
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
    name: "Dev",
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


]

