def color(str, *com)
  print "\e["
  com.each do |arg|
    print "#{arg}"
    print ";" if arg != com.last
  end
  print "m#{str}\e[0m"
end
[3, 9].each { |pre| (0..7).each { |suf| color("▒", (pre.to_s + suf.to_s).to_i) };puts"" }
[4, 10].each { |pre| (0..7).each { |suf| color(" ", (pre.to_s + suf.to_s).to_i) };puts"" }
