// Initialize all dialog variables as global
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
    "Pear Store Employee": c_aqua,
    "Starbucks": c_yellow,
    "Starbucks Employee": c_aqua,
    "The ByteCave": c_yellow,
    "Datacenter": c_yellow,
    "Guard Bots": c_red,
    "Ghost (Radio)": c_aqua,
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
    msg: "I'm Ghost, welcome to the city of dreams Chris! Atleast, that's what it was."
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
    name: "Starbucks",
    msg: "Entering Starbucks"
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
    msg: "Just kidding, €3,499 Please. "
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
]

global.starbucksemployee = [
{
    name: "Starbucks Employee",
    msg: "Welcome to Starbucks! Our system doesn't seem to recognize you so i can't give you your daily coffee... Did you give your personal data to Pear yet?"
},
{
    name: "Chris",
    msg: "Damn, y'all have a system like that? And no i didn't, nor will i ever give my data to that shitty company."
},
{
    name: "Starbucks Employee",
    msg: "Don't say that stuff about Pear, they hear everything you know.. But.. Are you part of the uh.. Resistance?.."
},
{
    name: "Chris",
    msg: "Can't say, i won't admit to anything... Anyways can i have 2 cappuccino's with no sugar?"
},
{
    name: "Starbucks Employee",
    msg: "Yeah sure, coming right up!"
},
{
    name: "Chris",
    msg: "Great."
},
{
    name: "Starbucks Employee",
    msg: "And here you go! Don't forget to come back later if you need it for your.. legal computer needs.."
},
{
    name: "Chris",
    msg: "Will do!"
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
    msg: "Yeah.. True. Also here's your coffee, cappuccino. No sugar, no milk. "
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
    msg: "Holy shit. How did you- Nevermind. That was.. EPIC!!! Absolutely insane stuff dude."
},
{
    name: "Chris",
    msg: "With that 'holy shit' you meant you thought that i was going to die? That's messed up dude. I mean that last recruit man.. "
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
    msg: "Sorry mate.. Try to remember how you fought those bots in the arena, you'll need it."
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