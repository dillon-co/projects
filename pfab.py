# Demonstrating the random intiger.

import random

#generate random numbers

die1 = random.randint(1, 6)
die2 = random.randint(1, 6)

total = die1 + die2

print "Press ender to roll die"
raw_input("> ")

print "You have rolled a %s and a %s for a total of %s" % (die1, die2, total)

raw_input("\n\nPress the enter key to exit.")

exit()
