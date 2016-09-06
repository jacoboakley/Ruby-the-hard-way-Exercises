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
    puts "------------------------------------------------"
    
  elsif choice.include? "both"
    puts "----------------------------------------------------"
    
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
maze
