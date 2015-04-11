# showing the use of lists.
inventory = ["sword", "armor", "shield", "healing potion"]
print "your items:"
for item in inventory:
        print item
        
raw_input("\n\tPress Enter To Continue.")

print "You have", len(inventory), "items in your inventory."

raw_input("\n\tPress Enter To Continue.")

if "healing potion" in inventory:
    print "You will live to fight another day."
    
index = int(input("\nEnter the index number for an item in inventory:"))

print "At index", index, "is", inventory[index]

start = int(input("\nEnter the index number to begin a slice: "))
finish = int(input("\n Enter the index number to end a slice"))

print ("inventory[", start, ":", finish, "] is", end= " ")
print inventory[start:finish]

input("\nPress the enter key to continue.")

index = int(input("Give me a number. >_"))

print "At position", index, "you will find", inventory[index]    