# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
  attr_accessor :parse
  
  def initialize(emails_csv)
    emails_array = emails_csv.gsub(",", " ").split(" ")
    
    emails_array.each do |email|
      @parse << email if !(@@parse.include?(email))
    end
  end
   
  def parse
    return @parse
  end
  
end