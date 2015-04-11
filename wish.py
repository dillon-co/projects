class Crazy(object):
 
 	def loco(self):
 		print "Why does everything smell like yellow?"
 		
 	def answer(self):
 		print "Because life keeps giving me lemons!"
 		
class Sane(Crazy):
	
	def answer(self):
		print "Nothing smells like yellow, I'm just crazy" 			
		
	def life(self):
		print "life is like a box ov chocolates,"
		print "You never know what you're going to get."
		print "\n what do you want?"
		
		answer = raw_input("> ")
		
		if answer == 'money':
			print "You are now one of the wealthiest people in the world."
			print "Congratulations."
		elif answer == 'love':
			print "You now have the most beautiful and perfect girlfriend."
			print "You wake up to see her smiling at you with those beautiful blue eyes"
			print "and that perfect brown hair of hers."
			print "Congratulations"
		elif answer == 'wealth':
			print "You now have an abundance of wealth and a beautiful brunette girlfriend."
			print "Next week the two of you are going on a surf trip to Costa Rica."
			print "You are now the happiest man alive, and your happy because you're with"
			print "her and she helped you achieve your dreams. You now live the dream life"
			print "filled with adventure, fun, meaningful work, and love."
			print "Congratulations"		
			
		
bob = Crazy()
bill = Sane()

bob.answer()
bill.answer()		

print "Would you like to talk to the genie?"

answer_1 = raw_input("> ")

if answer_1 == 'yes':
	bill.life()
else:
	print "Does not compute. Goodbye"	
	