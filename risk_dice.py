# To be used during risk in the abesense of dice
offense = 0
defense = 0

print "How many players does the offense have?"
offense += int(raw_input("> "))

print "How many players does the defense have?"
defense += int(raw_input("> "))

import random
def dice_roll(offense_player_count, defense_player_count):
    o_die1 = random.randint(1, 6)
    o_die2 = random.randint(1, 6)
    o_die3 = random.randint(1, 6)

    d_die1 = random.randint(1, 6)
    d_die2 = random.randint(1, 6)

    print "\nthe offense has rolled a %s, %s and a %s" % (o_die1, o_die2, o_die3)

    print "\nThe defense has rolled a %s and a %s" % (d_die1, d_die2)
    o_dice_array = [o_die1, o_die2, o_die3]
    d_dice_array = [d_die1, d_die2]

    winner(0, 0, offense_player_count, defense_player_count, o_dice_array, d_dice_array)

def winner(o_victory_count, d_victory_count, d_players, o_players, o_dice_array, d_dice_array):

    while o_players > 1 or d_players > 0:
        for o_dice in o_dice_array:
            for d_dice in d_dice_array:
                if o_dice > d_dice:
                    o_victory_count += 1
                else:
                    d_victory_count += 1
        
        # print "Offense has a count of %s" % (o_victory_count)
        # print "Defense has a count of %s" % (d_victory_count)
        if o_victory_count > d_victory_count:
            d_players -= 2
            print "The Offense Has Won!"
        elif d_victory_count >= o_victory_count and o_victory_count != 0:
            print "It's a Tie!!"
            o_players -= 1
            d_players -= 1
        else:
            print "The Defense Has Won!"  
            o_players -= 2  
            print "The offense now has %s players" % (o_players)
        print "\nThere are now %s offensive playes and %s defensive players." % (o_players, d_players)
        print "keep fighting?"
        fight_answer = raw_input("Y/N")

        if fight_answer == "y" or "Y":
            dice_roll(o_players, d_players)
        elif fight_answer == "n" or "N":
            print "Good battle."
            break 


dice_roll(offense, defense)