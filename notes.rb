puts digits.include?(5) #question marks return true or false
ret = digits.min #minimum of a range


ret = digits.max

ret = digits.max

ret = digits.reject {|i| i < 5}  #Reject everything that is less than 5


digits.each do |digit|
  puts "In loop #{digit}"
end  

# Next few lines are for random generators

array.map #Returns the result of the block(new result)
Random.new #Generates an object

arr = [1, 2, 3, 4, 5]
arr[rand(arr.size)]
=> 1

[1, 2, 3, 4, 5].sample

require 'securerandom' 
                        #generates a hex number with a probability 
                        #of repeating itself rediculously low
SecureRandom.hex
==========
s#===========================================================
 # over 2 and a half million different combinations in poker....
#================
# Time object
time1 = Time.new

puts "Curent Time : " + 

# Components of time

time = Time.new

Time.year

Time.now # More human way or putting it.

Time.day

Time.utc

Time.local

time.to_a  # This will return the array of the thime.

Time.now.to_i  # Gets the number of time in seconds from the epoch (Jan 1st 1970 for Macs)

Time.strftime



# equals

.eql? # True if reciever and argument are the same type and the same values

1.eql?(1.0) returns false


.equal? # True if the reciever and argument have the same object I

a.equal?aObj returns true


# For if else operations
(true or false) ? "code for true." : "false"


(true or false condition {like a < b}) ? puts "true" : puts "false"
# Or you can put 

puts (t or f condition) ? "if true" : "if false"


###########
###########
# Exception, Catch and throw
###########
###########
begin
  expr...
  [rescue [error_type [=>var],...]
    expr...] ...
  [else
    expr....]
  [ensure
    expr...]
  end      

#=====TOCCO========
This helps you recieve user input

.downcase
("always do this when your getting user's input")
#======TOCCO===========




catch :label do
  do_stuff
  throw :label if condition?
  do_other_stuff
end  



sleep 1 # has the computer wait for one second.


        # THis gets each with its index

choice.each_with_index {|choice, index| puts "{index + 1}. #{choice.capitalize}"

break #Break a while loop or a for loop ex.( break if player choice < 0 )

unless # Opposite of an if ex.( unless 0 == player_choice)
# The same as ( if !(0..2) in player_choice )
# Testing if something is false 


next # ignores the rest of the loop and starts a new loop  




if (condition && condition)||
   (condition && condition)||
   (condition && condition)
  puts "This is how you combine conditions in ruby."


%w[array1 array2 array3]  # % words 
# This is a short hand for writing a string

 REMEMBER = "Methods always return the last thing executed in that method"

chars


each_def = "each method will return the origional obhect it was working on"

map_def = "map returns the result to the array"



bang_method = "use the ! at the end of a word
 (e.g. capitalize!) to change what ever your working."
" on with that paramater to it. Use carfully"


Comparing = "instead of comparing values by getting"
"the actual values, just use the index."

result = conditional ? true : false

"a = (b < 1) ? (b - 1) : (b + 1)"



#####
#####
#====================================
#====================================
#====================================
# COMMENTS SAVE YOUR LIFE
#====================================
#====================================
#====================================
#####




########
=begin

== (compares objects)
=== (compares instances)

=end
########

#######
a = []
(0..9).each do |t|
  a << t + 1
end
########



=begin
(THE MAP PARAMATER)  
a = (0..9).map { |t| t + 1}
(return.each{SUDO CODE})
  
=end

# This makes an array with what-ever you want

Array.new(length, instance)

=begin 
==============================
Ruby Conference Notes
==============================
=end
#======================================== Day 1 =======================================
# quest for the ultimate template engine
Akira Matsuda
amatsuda(github)


"<% insert ruby code here (HTML file) %>"     
HAML 

ruby-hacking-guide.github.io 
end < % 

avoid using url_for

Slim is bad 

Basil & Fabian Three Ways Through 


Breadth-First Search
searching through levels instesad of instances

Creating space for time is a classical OOP tradeoff

create less objects for a good optimization technique

A* algorithim
  ("Research This. It's using estimates to"
    "find the shortest distance instead of counting.")

# CREATE LESS OBJECTS 

SmallTalk (SUPER SIMPLE)


impliment rules and geometry instrad of every possible combinations


vpri.com


Readable code comes sedond to being able to discribe your code.

The big idea messaging. OOP skill is passing 
messages through objects instead of just objects

<!!!-LEARN ATTR_ACCESSOR-!!!>

".,,;;:'"

Writing good code is important to raise the industry standard. <!!-WRITE GOOD CODE-!!>


=begin
  
STATISTICS
  
=end

A/B Testing (LEARN HOW)

Make sure to write the graph for yourself 

"Averages describe what's poorly"

Learn how to T task


LET THE DATA CHANGE YOUR OPINIONS!

"The sooner you admit you're wrong the better"
" and faster you can get to the right answer" 

Learn Bayesian Statistics 

Data Analysis

Machine Learning

#================

Abstraction
  The use of symplifying metophores 

Treat many things as 1 to quicken up code.  


#=================================== DAY 2 ========================================

Use rand(2) ? statement : statement

to choose at random

snap.svg

rubygem sing 



MEMOIZATION.

Clojure

swap! function


#============== BACK TO CLASS ===============

when using && put the one that's most likely to be false first.'

when using || puts the one that's most likely to be true first.'

  

.new uses GET .create uses POST


created_at 
  gives time

created_on
  gives date

self.primary_key = "string"
  (turns the primary key into something)


name = params[:name]
  (to get the name from a web form)  

# DON'T DO THIS!!!
pos = Order.where("name = '#{name}' and pay_type = 'po'")

# DO THIS INSTEAD!!!
pos = Order.where(["name = ? and pay_type = 'po'", name])


# Or this
pos = Order.where(params[:order])


limit(num)
  Limits the number of rows returned to us



User.limit(10).pluck('name')
  gives backa active record relation, and makes an array of just names


'readonly'


'group' adds group byclause to the sequel


'lock' Learn How To Use This!



Order.where("amount > 20").minimum(:amount) 
  gets the order with the minimum ammount


result = Order.group(:state),
                    order("max(amount) desc")     
                    limit(3)

scope "Almost like a magnifying class to look at 
something specific (i.e. scope for all items with prices of $40)"

find_by_sql


.update
  "changes the valuse of the attributes."
  "must specify which Id's we want to update."


.update_all()
  "Updtaes everything and allows you to specify set and 
  where clauses of the SQL update statement."


.delete
  "takes a single id takes a single id of array of id's."

.delete_all
  "deletes rows matching a given condition."    

.destroy
  "works on model objects"

order = Order.find_by(name: "Dave")
order.destroy
  "destroyes Dave"


.destroy_all()
  "same as .destroy, except this takes an argument"
  "use if you want to destroy all Daves."

before_validation

after_validation

after_initialize

class ContactObserver < ActiveRecord::Observer
  def after_create(contact)
    Notification.contact.logger('New contact added!')
  end  

end

  "observes attribute passed(in this case, contact)"



# ============================================
# ========================

# JAVASCRIPT

# ========================
# ============================================




carlos: "Super popular right now."

Learn This Because People Are Looking For People Who Know Both Front End And Back End

can use this for back_end and for front_end.


Less server interaction.


switch (expression)
{
  case condition1: statement(s)
                    break;
  case condition2: statement(s)
                    break; # Make sure you put the break. Super Important.
  case condition3: statements(s)
                    break;
  default: statement(s)                   
}


while (expression) {
  statement to be excecuted while true
}


while {
  statement
}(expression) # Do loop at least once, then check the expression


for (initialization/creating the variable; test condition; iteration statement){
  Statement(s) to be executed if test condition is true
}

for (var i = 0; i < 10; 1++) {
  console.log("I'm iterating");
}

will print 

"I'm iterating"

10.times


"Word".match(/[a-h]/gi)

finds every letter in "Word" that matches what is in between the brackets
    So this would return "d"





~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


!!!!!~~~~~~~~~~~~~~~always put variable names at the top of the method~~~~~~~~~~~~!!!!!!


~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~



parsInt() 

parsFloat()

Both Of These Turn A String Into A Number


~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ JQuery ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


window.onload = function() {
  alert("WELCOME!")
}

 This Is Cool Because It Runs The Function When The Window Loads.

 s( "a" ).click(function ( event ) { 
    console.log(this);
    var $anchor = $(this); 
    # $anchor == $("a") This what 'this' does.
    $anchor.hide( "slow" ); 
    # hides it slowly when clicked
    # (remember this is because it's inside of the click function)
    $anchor.show( "slow" );
    $.get( "page.html", function() {
      mycallback( param1, param2)
      })
    console.log($anchor);
  })

s( "tag/id/value goes here" ).action

This Selects Things On The Web Page Then Performes 
The Action On All Tags With That Specific Ting. 


##  invest in stocks based on attributes the user defines when downloading the app



$( "a" ).attr( "href", "new-webpage.com")

# This gets the original href from tag 'a' and changes it to 'new-webpage.com'
 #could probably call like this 

 $('a').click($(this).attr( "href", "new-webpage.com");

#^^ changes the link when clicked ^^ 
attr Changes whatever is passed

attr( "href" )
just gets the href.( gets the element )

  can change style and classes with this



selecting Elements by ID

$( "#myId")

selecting Elements by Compound CSS Selector

$( "#contents ul.people li" );

selecting Elements by Class

$( ".myClass" );

$( "#myForm :input")

$( "secection" )

All Of These Are Treated Like An Array.

.has( "p" )

.not( ".bar" )

.filter

.first

.eg( 5 );

$( "content" )
  .find( "h3" )
  .eq( 2 )
  .html( "Content to be changed" )


.appendTo( "myList" )

.remove(); # deletes it

.detach(); # detaches it then removes it.

Property Names Need To Be Quoted If They Are Reserved Words.


use .push instead of  << to add things to an array


``` Javascript Ability To Save Attributes To Users? ```


``` make it like a hash to change multiple attributes when changing things. ```


.data()
# this helps you store additional info in HTML (relatively new)

JQuery has a .each(). Read The Documentation On This


put all your code inside a document.ready function



LEARN AJAX!!! RTFM!!!!



x &&= y
  "if x is defigned, set it to y, if not, don't do anything"

x ||= y
  "if x is already defined, leave it alone, if not make it y"

use .select to select something


git status( "get the status of merge conflicts" )


git pull --rebase


