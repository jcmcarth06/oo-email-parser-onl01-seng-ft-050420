
class EmailAddressParser
  attr_accessor :name, :csv_emails

  #establishes name and csv_emails attributes to be accessed throughout the entire class method

  def initialize(csv_emails)
    @csv_emails = csv_emails
  end
  #initializes csv_emails variable

  def parse
    csv_emails.split.collect do |address|
      address.split(',')
      #collects and parses emails array split by commas
    end
    .flatten.uniq
    #gets rid of duplicates
  end
end
