
  class Dice
    @@sides = 0
    @@dice_roll = 0
    def twenty
      @@sides = 20
      puts '20'
    end
    def ten
      @@sides = 10
    end
    def eight
      @@sides = 8
    end
    def seven
      @@sides = 7
    end
    def six
      @@sides = 6
    end
    def five
      @@sides = 5
    end
    def four
      @@sides = 4
    end

    def roll_dice
      temp_list = []
      temp_value = 1
      begin
        temp_list.push(temp_value)
        temp_value += 1
      end until temp_list.length == @@sides
      @@dice_roll = temp_list[rand(temp_list.length)]
      puts "Your rolled " + @@dice_roll.to_s

    end
    def number_rolled
      return @@dice_roll
    end
  end

    def pick_playable_character
      temp = false
      begin
      puts "Pick a Character"
      puts " "
      sleep 1
      puts '1 Quin Humman Cleric, 2 Vistra Dwarf fighter, 3 Heskan Dragonborn Wizzard'
      puts '4 Tarak Half-Orc Rogue, 5 Keyleth Elf Paladin'
      puts ' '
      sleep 1
      puts 'Type in the number for the character you want.'
      puts ' '
      @answer = gets.chomp.to_i
      if @answer == 1
        @player = Quinn.new
      end
      if @answer == 2
        @player = Vistra.new
      end
      if @answer == 3
        @player = Heskan.new
      end
      if @answer == 4
        @player = Tarak.new
      end
      if @answer == 5
        @player = Keyleth. new
      end
      if @answer > 5
        puts 'Invalid Answer'
      else
        temp = true
      end
      end until temp == true
    end

#attacking monster stats
  @attacking_monster_armor = 5
  @attacking_monster_health = 2
  @attacking_monster_attack = 8
  @attacking_monster_damage = 1


#characters
@player
class Keyleth
  @@playable_char_armor = 17
  @@playable_char_health = 8
  @@playable_char_speed = 6
  @@playable_char_surge = 4
  #powers
    #At-will powers
      #divine challenge
      #holy strike
      #valiant strike
    #righteous smite
    #arcing smite
    #benign transposition
    #bravery
    #lay on hands
    #virtue's touch
    #noble shield
  #systems
  def test
    puts"test"
  end

  def health
    return @@playable_char_health
  end

  def take_damage
    @@playable_char_health -= 1
    puts "Your hit!!"
    sleep 1
    puts "Your health is now " + @@playable_char_health.to_s
    sleep 2
  end

end

class Tarak
  @@playable_char_armor = 14
  @@playable_char_health = 8
  @@playable_char_speed = 6
  @@playable_char_surge = 4
  #powers
    #distracting jab
    #positioning shot
    #lucky strike
    #tornado strike
    #acrobatic onslaught
    #kings's castle
    #tumbling escape
    #distant diversion
    #practiced evasion
    #furious assualt
  #systems
  def armor
    return @@playable_char_armor
  end
  def health
    return @@playable_char_health
  end
  def speed
    return @@playable_char_speed
  end

  def take_damage
    @@playable_char_health -= 1
  end

end

class Vistra
  @@playable_char_armor = 17
  @@playable_char_health = 8
  @@playable_char_speed = 5
  @@playable_char_surge = 4
  @@playable_char_attack = 8
  #powers
  #dwarven resilience
  #charge
  #reaping strike
  #sure strike
  #comeback
  #into the fray
  #taunting advance
  #inspiring advice
  #one for the team
  #to arms!
  def health
    return @@playable_char_health
  end
  def armor
    return @@playable_char_armor
  end
  def speed
    return @@playable_char_speed
  end
  def surge
    return @@playable_char_surge
  end
  def attack
    return @@playable_char_attack
  end

  def take_damage
    @@playable_char_health -= 1
  end

end

class Quinn
   @@playable_char_armor = 16
   @@playable_char_health = 8
   @@playable_char_speed = 5
   @@playable_char_surge = 4
   @@playable_char_attack = 8
   #powers
   #sacred flame
   #command
   #astral refuge
   #healing hymn
   #righteous advance
   #blade barrier
   #cause fear
   #wrathful thunder
   #cleric's shield
   #perseverance
   def health
     return @@playable_char_health
   end
   def armor
     return @@playable_char_armor
   end
   def speed
     return @@playable_char_speed
   end
   def attack
     return @@playable_char_attack
   end

   def take_damage
     @@playable_char_health -= 1
   end

 end

class Heskan
   @playable_char_armor = 14
   @playable_char_health = 6
   @playable_char_speed = 6
   @playable_char_surge = 3
   #powers
     #wizard eye
     #shock sphere
     #flaming sphere
     #hurled breath
     #ray of frost
     #mirror image
     #hypnotism
     #invisiblity
     #arc lightning
     #spectral ram
 end

#player powers


#monsters
  @monster
  class Duergar_guard
     @@armor = 16
     @@health = 20
     @@attack = 8
     @@damage = 1
     @@experience = 2
     @@to_attack = 1 #square

     #stat method
       def damage
         return @@damage
       end

       def armor
         return @@armor
       end

       def health
         return @@health
       end

       def attack
         return @@attack
       end

       def experience
         return @@experience
       end

    #systems
      def take_damage
        @@health -= 1
      end

   end

 class Orch_archer
   def initialize

     @@armor = 13
     @@health = 1
     @@attack = 6
     @@punch_damage = 1
     @@arrow_damage = 2
     @@arrow_missed_damage = 1
     @@experience = 1
     @@to_attack_punch = 1 #square
     @@to_attack_arrow = 2 #tiles
   end
     #stat def
       def armor
         return @@armor
       end
       def health
         return @@health
       end
       def experience
         return @@experience
       end
       def punch_damage
         return @@punch_damage
       end
       def arrow_damage
         return @@arrow_damage
       end
       def arrow_missed_damage
         return @@arrow_missed_damage
       end

     #systems
       def take_damage
         @@health -= 1
       end
       def to_attack_punch
         puts 'need to update'
       end
       def to_attack_arrow
         puts 'need to update'
       end

 end

  class Legion_devil
     @@armor = 16
     @@health = 1
     @@attack = 11
     @@damage = 1
     @@experience = 3
     @@to_attack_bite = 1 #square
     @@to_attack_tentacles = 1 #tile
     #If attack with tentacles moves next to player
     def armor
       return @@armor
     end
     def health
       return @@health
     end
     def attack
       return @@attack
     end
     def damage
       return @@damage
     end

     def experience
       return @@experience
     end
     #systems
     def to_attack_bite
       puts 'update code'
     end

     def to_attack_tentacles
       puts 'update code'
     end

     def take_damage
       @@health -= 1
     end
   end

  class Grell
     @@armor = 15
     @@health = 2
     @@attack = 7
     @@bite_damage = 1 #+ poisoned
     @@bite_damage_missed = 1
     @@tentacles_damage = 1 #+ dazed
     @@experience = 2

     #stat method
     def armor
       return @@armor
     end
     def health
       return @@health
     end
     def attack
       return @@attack
     end
     def bite_damage
       puts 'need to code in poison'
       return @@bite_damage
     end
     def bite_damage_missed
       return @@bite_damage_missed
     end
     def tentacles_damage
       puts 'need to code daze'
       return @@tentacles_damage
     end
     #systems
     def take_damage
       @@health -= 1
     end
     def experience
       return @@experience
     end

   end

  class Orc_smasher
     @@armor = 15
     @@health = 2
     @@attack = 9
     @@damage = 1
     @@experience = 2
     @@to_attack = 1 #tile
     # If attacks moves next to player

     #stat methods
     def armor
       return @@armor
     end
     def health
       return @@health
     end
     def attack
       return @@attack
     end
     def damage
       return @@damage
     end

     #systems
     def to_attack
       puts 'need to add tile'
     end
     def experience
       return @@experience
     end
     def take_damage
       @@health -= 1
     end

   end

  class Cave_bear

     @@armor = 14
     @@health = 2
     @@claws_attack = 4
     @@claws_damage = 2
     @@strike_attack = 8
     @@strike_damage = 2 #+ dazed
     @@experience = 2
     @@to_attack_claws = 1 #tile
     @@to_attack_strike = #same tile
     #If attack with stike moves next to players

     # stat methods
     def armor
       return @@armor
     end
     def health
       return @@health
     end
     def claws_attack
       return @@claws_attack
     end
     def claws_damage
       return @@claws_damage
     end
     def strike_attack
       return @@strike_attack
     end
     def strike_damage
       return @@strike_damage
     end

     #systems
     def experience
       return @@experience
     end
     def to_attack_claws
       puts 'need to update tiles'
     end
     def to_attack_strike
       puts 'need to update tiles'
     end
     def take_damage
       @@health -= 1
     end
   end

  class Snake
     @@armor = 13
     @@health = 1
     @@attack = 7
     @@damage = #poisoned
     @@experience = 1
     @@to_attack = 1 #tile
     #If attacks moves next to player

     #stat methods
     def armor
       return @@armor
     end
     def health
       return @@health
     end
     def attack
       return @@attack
     end
     def damage
       puts 'need to code poison'
     end

     #systems
     def experience
       return @@experience
     end
     def to_attack
       puts 'need to code tiles'
     end

   end

  class Kobold_dragonshield
     @@armor = 16
     @@health = 1
     @@attack = 7
     @@damage = 1
     @@experience = 1
     @@to_attack = 1 #square

     #stat methods
     def armor
       return @@armor
     end
     def health
       return @@health
     end
     def attack
       return @@atack
     end
     def damage
       return @@damage
     end
     def experience
       return @@experience
     end

     #systems
     def to_attack
       puts 'need to code tile'
     end
     def take_damage
       @@health -= 1
     end

   end

  class Human_cultist
     @@armor = 14
     @@health = 1
     @@attack = 6
     @@damage = 1 #+ poisoned
     @@experience = 1
     @@to_attack = 1 #tile
     #If attacks moves next to player

     #stat method
     def armor
       return @@armor
     end
     def health
       return @@health
     end
     def attck
       return @@attack
     end
     def damage
       return @@damage
     end

     #systems
     def experience
       return @@experience
     end
     def to_attack
       puts "need to code tiles"
     end
     def take_damage
       @@health -= 1
     end
   end

  def gibbering_mouther
     armor = 14
     health = 2
     attack = 8
     damage = 1 #+ dazed
     experience = 3
     to_attack = 1 #tile
     # Attacks all players
   end





#systems
@monster = Duergar_guard.new
  def player_attack
    @Dice.roll_dice
    temp_value = (@Dice.number_rolled) + (@player.attack)
    if temp_value > @monster.armor
      @monster.take_damage
    end
    puts @monster.health.to_s
  end
  def monster_attack attacker
    @Dice.roll_dice
    temp_value = (@Dice.number_rolled) + (attacker)
    if temp_value > @player.armor
      @player.take_damage
    end
    puts @player.health.to_s
  end



@answer = 0

pick_playable_character
#dice 20
#attack
@Dice = Dice.new

@Dice.twenty
@Dice.roll_dice
begin
  monster_attack @player.attack
end until @player.health == 0
