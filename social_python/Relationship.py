from sys import argv

script, user_name = argv
prompt = '> '

print "Hey %s, I'm the %s script." % (user_name, script)
print "I would love to ask you a few questions."
print "What's your name?"
name = raw_input(prompt)
print "Who gave you this code?"
friend = raw_input(prompt)
print "How do you feel about %s, %s?" % (friend, name)
feel = raw_input(prompt)

print "What do you like best about %s?" % friend
like = raw_input(prompt)

print "What's the most annoying thing? (I promise not to tell!)"
annoying = raw_input(prompt)

print """ Okay %r, so you said %r, 
You love %r, which is a little odd...
To each his own I guess... You also said you hate %r.. 
I totally agree! 
It's the worst.""" % (name, feel, like, annoying)

print "Want to know something %s?" % name
raw_input(prompt)

print "You have to keep it a seceret okay?"
raw_input(prompt)

print "Do you promise %s?" % name
raw_input(prompt)

print "Do you swear on a nerdy kids seashell collection?"
raw_input(prompt)

print """okay %s I believe you...""" % name
raw_input(prompt)
print """Ok what im going to tell you is...
%s, %s likes you...""" % (name, friend)
raw_input(prompt)

print "a lot..."
raw_input(prompt)
print "Maybe a little, Im not sure but I know %s likes you!" % friend
raw_input(prompt)

print """Listen %s, I would love to stay and chat 
but I have a nerdy kids seashell collection to 
destroy because of a broken promise ;)""" % name

print 'The End'


 
