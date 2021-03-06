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



def list (songs)
  songs.each_with_index do |song, i|
    puts "#{i+1}. #{song}"
  end
end  


def play (songs)
  puts "Please enter a song name or number:"
  user_resp = gets.chomp
  
  if list(songs).include? (user_resp)
    puts "Playing #{user_resp}"
  else puts "Invalid input, please try again" 
  end 
end   


def exit_jukebox
  puts "Goodbye"
end   

def run (songs)
  help 
  puts "Please enter a command:"
  user_resp = gets.chomp
  
  while user_resp != "exit"
    if user_resp == "list"
      list(songs)
     elsif user_resp == "help"
      help()
     elsif user_resp == "play"
      play(songs)
     else 
     puts "Invalid command"
     help() 
    end 
  end  
  exit_jukebox 
end  

