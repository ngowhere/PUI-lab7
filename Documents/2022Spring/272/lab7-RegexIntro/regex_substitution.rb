blasphemy = "I love watching the Yankees win."

def swap_in_boston(statement)
	statement.sub(/[Yy]\w+/, "Red Sox")
end

puts swap_in_boston(blasphemy)	# >> I love watching the Red Sox win.
puts blasphemy									# >> I love watching the Yankees win.

def swap_in_boston!(statement)
	statement.sub!(/[Yy]\w+/, "Red Sox")
end

puts swap_in_boston!(blasphemy)	# >> I love watching the Red Sox win.
puts blasphemy									# >> I love watching the Red Sox win.

heresy = "The New York Yankees are the best."

def swap_all_boston(statement)
	statement.gsub(/[Yy]\w+/, "Red Sox")
end

puts swap_in_boston(heresy)		# => The New Red Sox Yankees are the best.
puts swap_all_boston(heresy)	# => The New Red Sox Red Sox are the best.