def ConvertToString(intRPS)
	case intRPS
		when 0 then "Rock!!"
		when 2 then "Scissors!!"
		when 5 then "Paper!!" 
	end
end

def RandomRPSAndCheckWin(usersRPS)
	rndRPS = [0,2,5].sample
	puts "You Choose #{ConvertToString(usersRPS)}  The Computer Choose #{ConvertToString(rndRPS)}"
	case usersRPS - rndRPS
		when 0 then puts "Draw!!"
		when -2 then puts "YouWin!!"
		when 2 then puts "YouLose!!" 
		when 3 then puts "YouLose!!"
		when -3 then puts "YouWin!!"
		when 5 then puts "YouWin!!"
		when -5 then puts "YouLose!!"
	end
end

begin
	begin
		puts "Wellcome to The RPS Game"
		puts "Please Choose the RPS by Number that You Want"
		puts"(0)Rock (2)Scissors (5)Paper (9)Leave The GAME"
		UsersRPS = gets.chomp.to_i
	end while ![0,2,5,9].include?(UsersRPS)
	puts
	if(UsersRPS!=9)
		RandomRPSAndCheckWin(UsersRPS)
		puts
	end

end while UsersRPS != 9

puts "BYE!"