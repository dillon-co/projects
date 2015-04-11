# demonstrating the randomness of numbers and shit

import random

die1 = random.randint(1, 6)
die2 = random.randint(1, 6)

total = die1 + die2

print"You have rolled a %s and a %s for a total of %s" % (die1, die2, total)

raw_input("press enter to exit")

exit()