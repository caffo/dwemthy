require 'creature'
require 'rabbit'
require 'foes'

class DwemthysArray < Array
  alias _inspect inspect
  def inspect; "#<#{ self.class }#{ _inspect }>"; end
  def method_missing( meth, *args )
    answer = first.send( meth, *args )
    if first.life <= 0
      shift
      if empty?
        puts "[Whoa.  You decimated Dwemthy's Array!]"
      else
        puts "[Get ready. #{ first.class } has emerged.]"
      end
    end
    answer || 0
  end
end

dwarr = DwemthysArray[IndustrialRaverMonkey.new,
                      DwarvenAngel.new,
                      AssistantViceTentacleAndOmbudsman.new,
                      TeethDeer.new,
                      IntrepidDecomposedCyclist.new,
                      Dragon.new]

@ohai = <<-END

                                           _                                          
 ____  _ _ _ _____ _____ _____ _____ __ __| |_____    _____ _____ _____ _____ __ __   
|    \| | | |   __|     |_   _|  |  |  |  |_|   __|  |  _  | __  | __  |  _  |  |  |  
|  |  | | | |   __| | | | | | |     |_   _| |__   |  |     |    -|    -|     |_   _|  
|____/|_____|_____|_|_|_| |_| |__|__| |_|   |_____|  |__|__|__|__|__|__|__|__| |_|    


DWEMTHY'S ARRAY is not a mind puzzle. It is a short 60 line role-playing game that is played with Ruby metaprogramming. The game comes from chapter six of Why's (Poignant) Guide to Ruby - http://mislav.uniqpath.com/poignant-guide/.

You Are A Rabbit, UNTIL!
------------------------

In this game, you are a rabbit who is going to die. A dragon is going to do it. Deep in Dwemthy's Array.

Please, never ask who Dwemthy is. Obviously he is a mastermind and would never disclose his location or true identity. He has sired dynasties. He has set living ogres aflame. Horses everywhere smell him at all times. Most of all, he knows carnal pleasures. And to think that this...

This is his Array.

#{dwarr.inspect}

If you don't understand Dwemthy's Array, it is Dwemthy's fault. He designed the game to complicate our lives and were it simpler, it would not be the awe-inspiring quest we've come to cherish in our arms this very hour.

Introducing: You.
-----------------

You have four weapons. I shan't describe them further. Ok, I will:

^ - little boomerang
/ - the hero's sword is unlimited!!
% - lettuce will build your strength and extra ruffage  will fly in the face of your opponent!!
* - bombs, but you only have three!!

How to Play
-----------

To get the fight started, make sure you've created one of you:

r = Rabbit.new

Now use the little boomerang to kill monsters who dell in the fetid array!

> r * dwarr
[You hit with 4 points of damage!]
#<DwemthysArray[#<IndustrialRaverMonkey:0x1005279d8 @charisma=91, @strength=35, @life=42, @weapon=2>, #<DwarvenAngel:0x100527758 @charisma=144, @strength=6, @life=540, @weapon=50>, #<AssistantViceTentacleAndOmbudsman:0x1005274d8 @charisma=144, @strength=6, @life=320, @weapon=50>, #<TeethDeer:0x100527258 @charisma=19, @strength=192, @life=655, @weapon=109>, #<IntrepidDecomposedCyclist:0x100526fd8 @charisma=422, @strength=560, @life=901, @weapon=105>, #<Dragon:0x100526b78 @charisma=1020, @strength=451, @life=1340, @weapon=939>]>
[Your enemy hit with 16 points of damage!]
[Rabbit magick powers up 25!]
[Rabbit has died.]

For crying out loud!! Our sample rabbit died!!

Grim prospects. I can't ask you to return to the rabbit kingdom, though. Just pretend like you didn't die and make a whole new rabbit. Iterate until perfection.

Fight the Array and the monsters will appear as you go. Godspeed and may you return with harrowing tales and nary an angel talon piercing through your shoulder.

Oh, and none of this "I'm too young to die" business. I'm sick of that crap. I'm not going to have you insulting our undead young people. They are our future. After our future is over, that is.

END

puts @ohai