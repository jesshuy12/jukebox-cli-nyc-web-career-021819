songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end

def list(songs)
  songs.each_with_index do |track, i|     #iterate and access to each element and its index
    puts "#{i+1}. #{track}"               #adds 1 to the index number iterated, and displays track
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp                                  #user input
  if (1...9).include?(input.to_i)                     #if user input is number 1-9, change to int
    puts "Playing #{songs[(input.to_i - 1)]}"         #
  elsif songs.include?(input)                         #if user input is name of song
    puts "Playing #{input}"                           
  else
    puts "Invalid input, please try again"
  end
end  
    
def exit_jukebox   
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  input = gets.chomp
  loop do
    if input == "list"
      list
      input = gets.chomp
    elsif input == "play"
      play
      input = gets.chomp
    elsif input == "help"
      help
      input = gets.chomp
    else
      exit_jukebox
      break  
    end
  end   
 end

    
    
    