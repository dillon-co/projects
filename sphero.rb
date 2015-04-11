require 'artoo'

connection :sphero, :adaptor => :sphero, :port => '/dev/tty.Sphero-RPB-AMP-SPP'
device :sphero, :driver => :sphero

def spiral
  work do 
    x = 0
    y = 45
    1000.times do 
      while x < 720 
        x = 0 if x >= 359 
        y = 45 if y <= 0
        sphero.roll 50, (x += y -= 1)
        sleep 0.2 
        sphero.set_color(rand(255),rand(255),rand(255)) 
      end 
    end   
  end
end  


def circle
  work do 
    x = 0
    1000.times do 
      while x < 720 
        x = 0 if x >= 359 
        sphero.roll 50, (x += 45)
        sleep 0.2  
      end 
    end   
  end
end


def square
  work do
    x = 0
    4.times do
      while x < 720
        sphero.roll 50, x += 90
        sleep 1
      end
    end
  end
end          




def figure8
  work do 
    x = 0
    1000.times do 
      while x < 360 
        sphero.roll 50, (x += 45)
         sleep 0.2 
         sphero.set_color(rand(255),rand(255),rand(255))  
      end 
      figure8
    end   
  end
end

def between_letters
  sphero.roll(50, 90)
  sleep 2
end  

# def change_course
#   if 
#       sphero.roll 50, BACKWARD
#     #set_color([rand(255), rand(255), rand(255)])
#   end  
# end    

# def line
#   work do
#     while true
#       1000.times { sphero.roll 90, 360 }
#       sphero.handle_collision_detected
#         100.times do 
#           sphero.roll(250, 180)  
#         end
#       end  
#     end  
#   end  
# end


# sphero.set_color(0,255,255)

def draw_name
  x = 45

  work do
    sphero.set_color(46, 139, 87)
    # D
    sphero.roll(50, 0)
    sleep 3
    while x < 271
      sphero.roll(50, (x += 45))
      sleep 0.5 
    end
    between_letters
    # I 
    x = 90
    sphero.roll(50, (x))
    sleep 0.6
    while x > 0
      sphero.roll(50, (x -= 45))
      sleep 1.5
    end
    x = 180
    sphero.roll(50, (x)) 
    until x == 90
      sphero.roll(50, (x -= 45))
      sleep 1.5
    end 
    between_letters
    # Both L's 
    2.times do
      while x >= 25
        sphero.roll(50, (x -= 35))
        sleep 1
      end
      sphero.roll(50, 0)
      sleep 1.5
      sphero.roll(50, 315)
      sleep 0.7
      sphero.roll(50, 225)
      sleep 0.7
      shperp.roll(50, 180)
      sleep 1.5
      while x > 0
        sphero.roll(50, (x -= 45))
        sleep 1.5
      end
      between_letters
    end 
    between_letters
    # O
    sphero.roll(50, 45)
    sleep 0.6
    sphero.roll(50, 0)
    2.times do
      x = 0 if x >= 359 
      sphero.roll(50, (x += 45))
      sleep 0.6  
    end
    x = 0
    sphero.roll(50, x)
    sleep 0.6
    until x == 90 
      shpero.roll(50, (x += 45))
      sleep 0.6
    end
    sphero.roll(50, x)
    sleep 1.5
    between_letters
    # N
    until x == 180
      sphero.roll(50, (x += 45))  
      sleep 0.6
    end
    x = 0
    sphero.roll(50, x)
    sleep 0.6
    until x == 180
      sphero.roll(50, (x += 45))
      sleep 0.6
    end
    sphero.roll(50, 180)
    sleep 0.45
    stop      
  end
end



draw_name

