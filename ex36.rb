def start
  puts "--------------------------------------------------"
  puts "You wake up from a nap in your car just before"
  puts "you walk into the store to pick up some batteries."
  puts "You are approached by a man handing out samples"
  puts "of lemonade inside while you are shopping."
  puts "--------------------------------------------------"
  puts "Do you take the free sample? yes or no?"
        
  print "> "
  choice = $stdin.gets.chomp
  choice = choice.downcase
  
  if choice == "yes"
    puts "---------------------------------------------"
    maze
  elsif choice == "no"
    puts "---------------------------------------------"
    puts "You politly refuse the offer, get your batteries"
    puts "and return to your empty home and play your"
    puts "video games until you pass out with Cheeto"
    puts "stains on your shirt and a klennex in your hand"
          
  else
    puts "The man hits you over the head with his tray"
    puts "-------------------------------------------- "
    puts "Please choose yes or no."
    puts "--------------------------------------------"
    start
  end
end

def maze
  puts "You turn around and you are in a room with a"
  puts "single door and a table. On the table are two"
  puts "items: a board and a key"
  puts "----------------------------------------------"
  puts "What do you do?"
  
  print "> "
  choice = $stdin.gets.chomp
  choice = choice.downcase
  
  if (choice.include? "key") && (choice.include? "board")
    puts "---------------------------------------------"
    door
  elsif choice.include? "both"
    puts "---------------------------------------------"
    door
  elsif (choice.include? "key") || (choice.include? "board")
    puts "---------------------------------------------"
    puts "As you turn araound a voice in your head says"
    puts "Perhaps you should take both. And then..."
    puts "---------------------------------------------"
    maze
  else
    puts "---------------------------------------------"
    puts "That does't do any good"
    puts "---------------------------------------------"
    maze
  end
end

def door
  puts "You slide the key in the door and turn it. You"
  puts "hear the deadbolt move. You slowly turn the knob"
  puts "and open the door. You walk through and the door"
  puts "shuts behind you. You notice a long gap just"
  puts "inches from your feet with no bottom in sight."
  puts "On the other side is a bright light."
  puts "------------------------------------------------"
  puts "What do you do?"
  
  print "> "
  choice = $stdin.gets.chomp
  choice = choice.downcase
  
  if choice.include? "jump"
    puts "You are to heavy and cant make the jump."
    puts "The next thing you know..."
    puts "----------------------------------------------"
    maze
  elsif choice.include? "board"
    puts "You lay the board across the gab and make"
    puts "your way across to the other side."
    puts "----------------------------------------------"
    start
  else
    puts "That didn't work and the next thing you know..."
    puts "-----------------------------------------------"
    maze
  end
end

start
        