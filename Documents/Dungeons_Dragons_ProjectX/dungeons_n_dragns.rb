class Dice
    @@sides = 0
    @dice_roll = 0

    #sides methods
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
      @@sides.times do
        temp_list.push temp_value
        temp_value += 1

      end

      @dice_roll = temp_list[rand(temp_list.length)]
      puts "Your rolled " + @dice_roll.to_s


    end

    def number_rolled
      return @dice_roll
    end

  end

@player = 1
def pick_playable_character
      temp = false
      begin
      puts "Pick a Character"
      puts " "
      sleep 1
      puts '1 Quin Humman Cleric,'
      puts '2 Vistra Dwarf fighter,'
      puts '3 Heskan Dragonborn Wizzard'
      puts '4 Tarak Half-Orc Rogue,'
      puts '5 Keyleth Elf Paladin'
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
        puts 'Invalid Answer Try agian'
      else
        if @answer == 0
          puts 'Invalid Answer Try Agian'
        else
        temp = true
      end
      end
      end until temp == true
    end





#characters
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

    def test
      puts "test"
    end

    def attack
      return 9
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
      def test
        puts 'test'
      end
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

    def take_damage
      @@playable_char_health -= 1
      puts @@playable_char_health.to_s
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
    def test
      puts 'test'
    end
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
    #stats
     @@playable_char_armor = 16
     @@playable_char_health = 8
     @@playable_char_speed = 5
     @@playable_char_surge = 4
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

       def test
         puts 'test'
       end

    #stat methods
      def armor
        return @@playable_char_armor
      end
      def health
        return @@playable_char_health
      end
      def speed
        return @@playable_char_speed
      end
      def surge
        return @@playable_char_surge
      end

    #systems
      def take_damage
        @@playable_char_health -= 1
      end

   end

  class Heskan
    #stats
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
    #stat methods
    def test
      puts 'test'
    end
      def armor
        return @@playable_char_armor
      end

      def health
        return @@playable_char_health
      end

      def speed
        return @@playable_char_speed
      end

      def surge
        return @@playable_char_surge
      end

    #systems
      def take_damage
        @@playable_char_health -= 1
      end

   end


#monsters
  @monster
  class Duergar_guard
    #stats
     armor = 16
     health = 20
     attack = 8
     damage = 1
     experience = 2
     @@to_attack = 1 #square

    #stat method
       def damage
         return damage
       end

       def armor
         return armor
       end

       def health
         return health
       end

       def attack
         return attack
       end

       def experience
         return experience
       end

    #systems
      def take_damage
        health -= 1
      end

  end

  def orc_archer
     armor = 13
     health = 1
     attack = 6
     punch_damage = 1
     arrow_damage = 2
     arrow_missed_damage = 1
     experience = 1
     to_attack_punch = 1 #square
     to_attack_arrow = 2 #tiles
   end

  def legion_devil
     armor = 16
     health = 1
     attack = 11
     damage = 1
     experience = 3
     to_attack_bite = 1 #square
     to_attack_tentacles = 1 #tile
     #If attack with tentacles moves next to player
   end

  def grell
     armor = 15
     health = 2
     attack = 7
     @@bite_damage = 1 #+ poisoned
     @@bite_damage_missed = 1
     @@tentacles_damage = 1 #+ dazed
     experience = 2
   end

  def orc_smasher
     armor = 15
     health = 2
     attack = 9
     damage = 1
     experience = 2
     @@to_attack = 1 #tile
     # If attacks moves next to player
   end

  def cave_bear
     armor = 14
     health = 2
     @@claws_attack = 4
     @@claws_damage = 2
     @@strike_attack = 8
     @@strike_damage = 2 #+ dazed
     experience = 2
     @@to_attack_claws = 1 #tile
     @@to_attack_strike = #same tile
     #If attack with stike moves next to players

  def snake
     armor = 13
     health = 1
     attack = 7
     @@amage = #poisoned
     experience = 1
     @@to_attack = 1 #tile
     #If attacks moves next to player
   end

  def kobold_dragonshield
     armor = 16
     health = 1
     attack = 7
     damage = 1
     experience = 1
     @@to_attack = 1 #square

   end

  def human_cultist
     armor = 14
     health = 1
     attack = 6
     damage = 1 #+ poisoned
     experience = 1
     @@to_attack = 1 #tile
     #If attacks moves next to player
   end

  def gibbering_mouther
     armor = 14
     health = 2
     attack = 8
     damage = 1 #+ dazed
     experience = 3
     @@to_attack = 1 #tile
     # Attacks all players
   end



  end

#systems
@dice = Dice.new
@dice.twenty



  def player_attack
      @dice.roll_dice
      temp_value = (@dice.number_rolled) + (@player.attack)
      if temp_value > @monster.armor
        @monster.take_damage
      end
      puts @monster.health.to_s
    end

  def monster_attack attacker
      dice.roll_dice
      temp_value = (dice.number_rolled) + (attacker.attack)
      if temp_value > @player.armor
        @player.take_damage
      end
      puts @player.health.to_s
  end
@player = Keyleth.new
@monster = Duergar_guard.new
player_attack
