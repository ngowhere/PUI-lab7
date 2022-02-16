lass RegexTester
  def initialize(pattern=nil)
    @pattern = pattern unless pattern.nil?
  end

  attr_accessor :pattern

  def statement=(statement)
    @statement = statement
  end

  def statement
    @statement
  end

  def test
    if pattern_matches? @statement
      puts "MATCH: #{@statement}"
    else
      STDERR.puts "NO MATCH: #{@statement}"
    end
  end 

  def pattern_matches? statement
    statement.match(@pattern) != nil
  end

end