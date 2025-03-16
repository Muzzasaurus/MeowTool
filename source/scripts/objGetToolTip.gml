///objGetToolTip(obj)

switch (argument0) {
    case PlayerStart: return "Player Start#Where the player starts.";
    case FakeWarp: return 'End Warp#Touch this to "win".'

    case SavePointHard: return "Save Point#Shoot it to save. Only works with normal gravity."
    case SavePointFlip: return "Save Point#Shoot it to save. Only works with flipped gravity."
    case BulletBlock: return "Bullet Blocker#Blocks bullets."

    case Water1: return "Water 1#Water that you can single jump in.";
    case Water2: return "Water 2#Water that you can double jump in.";
    case Water3: return "Water 2#Water that you can double jump in. Also refreshes your double jump.";

    case Block: return "Block#Just a block. Nothing special."
    case MiniBlock: return "Mini Block#Just a (small) block. Nothing special."

    case SpikeU: return "Upwards Spike#It kills you. That's it."
    case SpikeD: return "Downwards Spike#It kills you. That's it."
    case SpikeL: return "Leftwards Spike#It kills you. That's it."
    case SpikeR: return "Rightwards Spike#It kills you. That's it."

    case MiniSpikeUp: return "Upwards Mini Spike#It kills you. That's it."
    case MiniSpikeDown: return "Downwards Mini Spike#It kills you. That's it."
    case MiniSpikeLeft: return "Leftwards Mini Spike#It kills you. That's it."
    case MiniSpikeRight: return "Rightwards Mini Spike#It kills you. That's it."

    case KillBlock: return "Killer Block#What's worse than safe blocks? DEADLY BLOCKS"
    case Cherry: return fruitName + "#It kills you, but after being boiled 3 times it doesn't."

    case Platform: return 'Platform#Only the top is solid. You can also "swim" in it.'
    case OneTimePlatform: return 'One Time Platform#Just like a platform, except that it disappears after you jump on/in it.'
    case SidewaysPlatform: return "Sideways Platform#It's a sideways platform. Need I say more?"

    case CatharsisWater: return "Catharsis Water#Works just like regular water, except that it does nothing to your jump.#From I Wanna Catharsis."
    case NekoronAir: return "Nekoron Air#You can double jump in this. Note that it doesn't refresh your double jump.#From I Wanna Be The Fangame."
    case UpdraftWater: return "Updraft Water#Water that sends you up instead of down. You can still go down if you have enough velocity, though."
    case WaterNoJump: return "No Jump Water#Do I really need to explain how this one works?"

    case ShootRefresherL: return "Leftwards Shoot Refresher#Shoot it to regain your double jump."
    case ShootRefresherR: return "Rightwards Shoot Refresher#Shoot it to regain your double jump."

    case WallJumpL: return "Right Facing Vine#Hold the jump button and press right to jump off of it. Can eat your double jump."
    case WallJumpR: return "Left Facing Vine#Hold the jump button and press left to jump off of it. Can eat your double jump."

    case GravFlip: return "Upwards Gravity Flipper#Makes you go up instead of down."
    case GravNormal: return "Downwards Gravity Flipper#Makes you go down instead of up."

    case JumpRefresher: return "Jump Refresher#Refreshes one of your double jumps."

    case SlipBlock: return "Ice block#Please, for the love of god, don't use this."

    case LowGravField: return "Low Gravity Field#Lowers your gravity while you're touching it.#From Not Another Needle Game."
    case HighGravField: return "High Gravity Field#Increases your gravity while you're touching it.#From Not Another Needle Game."
    case LowSpeedField: return "Low Speed Field#Lowers your speed while you're touching it.#From Not Another Needle Game."
    case HighSpeedField: return "High Speed Field#Increases your speed while you're touching it.#From Not Another Needle Game."

    case ZeroGravField: return "Zero Gravity Field#Disables gravity and the ability to move your legs while you're touching it."

    case StarSingleJump: return "Single Jump Star#Takes away your double jump, leaving you with 1 jump.#From Not Another Needle Game."
    case StarDoubleJump: return "Double Jump Star#Makes you have 2 jumps. This is the default amount.#From Not Another Needle Game."
    case StarTripleJump: return "Triple Jump Star#Makes you have 3 jumps. Usually things that refresh your double jump will refresh your triple jump.#From Not Another Needle Game."

    case GravPlatformBoth: return "Flipping Gravity Platform#Just like a platform, except that it inverts your gravity whenever you jump in it. You can't land on it, too."
    case GravPlatformUp: return "Upwards Gravity Platform#Just like a platform, except that it gives you upwards gravity whenever you jump in it. You can't land on it, too."
    case GravPlatformDown: return "Downwards Gravity Platform#Just like a platform, except that it gives you downwards gravity whenever you jump in it. You can't land on it, too."

    case ShootkidEnable: return "Telekid Enabler#Gives you the Telekid/Shootkid power-up. Press shoot to use the power-up.#From Not Another Needle Game."
    case ShootkidDisable: return "Telekid Disabler#Removes the Telekid/Shootkid power-up. Press shoot to use the power-up.#From Not Another Needle Game."

    case DotkidEnable: return "Dotkid Enabler#Gives you the Dotkid power-up."
    case DotkidDisable: return "Dotkid Disabler#Removes the Dotkid power-up."

    case VCoinGive: return "VVVVVVKid Enabler#Gives you the VVVVVVKid power-up. Consumable."
    case VCoinTake: return "VVVVVVKid Disabler#Removes the VVVVVVKid power-up. Consumable."

    case Ladder: return "Ladder#Press up to begin climbing, and jump to get off. Restores your double jump."
    case LadderSide: return "Sideways Ladder#It's a ladder, but sideways."

    case CustomSnap: return "Custom Snap Platform#Currently unimplemented. If you see this text please let the devs know!"

    case KidBlockUp: return "Downwards Gravity Block#Lets you pass through if you have downwards gravity. Kills you otherwise.#From I Wanna Walk The Ceiling."
    case KidBlockDown: return "Upwards Gravity Block#Lets you pass through if you have upwards gravity. Kills you otherwise.#From I Wanna Walk The Ceiling."

    case SlopeTL: return "Top Left Slope#It's a slope, and it does slope things."
    case SlopeTR: return "Top Right Slope#It's a slope, and it does slope things."
    case SlopeBL: return "Bottom Left Slope#It's a slope, and it does slope things."
    case SlopeBR: return "Bottom Right Slope#It's a slope, and it does slope things."

    case LucsterBubble: return "Lucster Bubble#Locks you in place until you shoot, where it gives you a speed boost. Don't wait in it for too long however, or it'll kill you."
    case objSwing: return "Swing#Swings you around, you can use the left and right buttons to control where you go. Jump to exit."

    default: return ""
}
