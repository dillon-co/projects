# To be used during risk in the abesense of dice

import random

o_die1 = random.randint(1, 6)
o_die2 = random.randint(1, 6)
o_die3 = random.randint(1, 6)

d_die1 = random.randint(1, 6)
d_die2 = random.randint(1, 6)

print "the offense has rolled a %s, %s and a %s" % (o_die1, o_die2, o_die3)

print "The defense has rolled a %s and a %s" % (d_die1, d_die2)



def winner():


    if o_die1 > d_die1:
        if o_die2 > d_die2:
            print "\n\n The Offense has won!"
        elif o_die3 > d_die1:
            print "\n\nThe Offense Wins!"
        elif o_die3 > d_die2:
            print "\n\nThe Offense has won!"
        else:
            print "\n\nIt's a draw! Minus one from each"

    elif o_die1 > d_die2:
        if o_die2 > d_die1:
            print "\n\nThe Offense Wins!"
        elif o_die3 > d_die1:
            print "\n\nThe Offense Wins!"
        else:
            print "\n\nIt's a draw! Both sides are wounded!"

    elif o_die2 > d_die1 and d_die2:
        if o_die3 > d_die2:
            print "\n\nThe offense has won!"
        else:
            print "\n\nIt's a tie! take one from both sides."

    elif o_die3 > d_die1:
        if o_die3 > d_die2:
            print "\n\nIt's a draw! take one from each."
        else:
            print "\n\nIt's a draw! Take a little from both."

    elif o_die3 > d_die2:
        print "\n\nIt's a draw! take one from each."

    elif o_die1 > d_die2:
        if o_die2 > d_die1:
            print "\n\nThe Offense Wins!"
        elif o_die3 > d_die1:
            print "\n\nThe Offense Wins!"
        else:
            print "\n\nIt's a draw! Each loses a player."

    else:
        print "\n\nThe Defense has won!"




winner()
