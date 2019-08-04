
old_sync = $stdout.sync
$stdout.sync = true

@chances = 6
@counter = 0


puts "\r\n\r\n[Welcome to tricky GAME]\r\n\r\n"

def ask_for_name
	
	puts "\r\n\r\nWhat's your name?\r\n\r\n"
	return gets.chomp
end

# pilih level
def select_level
	puts "\r\n\r\nChoose your level"

	puts "1	-	EASY"
	puts "2	-	MEDIUM"
	puts "3	-	HARD"

	return gets.to_i
end

def set_secret_number
	if @choice == 1 # Level 1 - Easy
		@secret_number = rand(1..10)
	elsif @choice == 2 # Level 2 - Medium
		@secret_number = rand(1..30)
	elsif @choice == 3 # Level 3 = Hard
		@secret_number = rand(1..100)
	else
		puts "Not recognised"
	end
	return @secret_number
end

def guess_number
	puts "\r\n\r\nEnter your guess"
	return gets.chomp
end

def play_game
	name = ask_for_name
	puts "Hello #{name}"

	@choice = select_level
	puts "You selected #{@choice}"

	@secret_number = set_secret_number
	puts "secret_number: #{@secret_number}"


#array = []

	loop do
		puts "Counter: #{@counter}, chances: #{@chances}"
		@counter += 1

		guess = guess_number

	 	if guess == @secret_number
	 		puts "YOU WIN !!!"
	 		break
	 	elsif guess != @secret_number
	 		puts "TRY AGAIN"
	 	end

	 	if @counter == @chances
	 		puts "\r\n\r\nGAME OVER\r\n\r\n"	
	 	end
	 	break if @counter == @chances

	end
 

	prompt_replay
end

def prompt_replay 
	puts "\r\n\r\nPRESS Y TO NEW GAME"
	puts "\r\n\r\nPRESS E to EXIT"

	answer = gets.chomp.to_s
	
	if answer.upcase == 'Y'
		play_game
	else answer.upcase == 'E'
		exit
	end   	
end

play_game














 

