require 'rumouse'

mouse = RuMouse.new
exit = false
mouse.move(rand(20),rand(20))
loop do
  10.times do
    #Move your mouse outside of the top left corner of the screen to exit cleanly
    if mouse.position[:x] > 20 || mouse.position[:y] > 20
      puts "Exiting."
      exit = true
      break
    end
    mouse.move(rand(20),rand(20))
    puts "."
    sleep(1)
  end
  if exit
    break
  end
  mouse.click(10,10)
  puts "!"
end