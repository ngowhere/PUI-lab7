
# This is a very bad regular expression for matching emails
def is_email?(email)
	(email =~ /^[\w]([^@\s,;]+)@(([\w-]+\.)+[a-z]{2,})$/) != nil
end

is_email?("razingrooks@yahoo.com")      # => true				
is_email?("razingrooks+@yahoo.com")     # => true				
is_email?("razingrooks@my.yahoo.com")   # => true			
is_email?("razing_rooks@yahoo.com")     # => true				
is_email?("razingrooks@my-yahoo.com")   # => true			
is_email?("razing.rooks@yahoo.museum")  # => true		

is_email?("razingrooks@yahoo,com")      # => false				
is_email?("razingrooks")                # => false									
is_email?("razing rooks@yahoo.com")     # => false				
is_email?("razing,rooks@yahoo.com")     # => false				
is_email?("razing@rooks@yahoo.com")     # => false				
is_email?(".razing.rooks@yahoo.com")    # => false			
is_email?("razing.rooks@yahoo.c")       # => false