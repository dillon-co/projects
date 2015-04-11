file_1 = File.open("pictures/bridge_fade.jpg", "r") do |f|
 f.each_line do |line|
   puts line
 end
end
# File is closed automatically at end of block

# file_2 = File.open("my/file/path", "r") do |f|
#  f.each_line do |line|
#    puts line
#  end
# end
# # File is closed automatically at end of block

# file_1 === file_2 ? puts "no changes made" : puts "changes have been made"