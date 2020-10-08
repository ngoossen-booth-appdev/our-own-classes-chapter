# Define a class Person with:

#  - An attribute first_name
#  - An attribute last_name
#  - An attribute birthdate (we just assign a string to this attribute, e.g. "April 19, 1987")
#  - An instance method, full_name, that puts first_name and last_name together
#  - An instance method, age, that calculates the number of years between today and birthdate

class Person
    attr_accessor :first_name
  attr_accessor :last_name
   require("date") # We need to pull in the Date class, which is not loaded by default

  attr_accessor :birthdate


  def full_name
    return self.first_name + " " + self.last_name
  end
  def age
    dob = Date.parse(self.birthdate)
    now = Date.today
    age_in_days = now - dob
    age_in_years = age_in_days / 365

    return age_in_years.to_i
  end
end

dev = Person.new
dev.first_name = "Nicholas"
dev.last_name = "Goossen"
dev.birthdate = "September 3, 1990"
dev.full_name # => "Nicholas Goossen
dev.age # => 30 ish