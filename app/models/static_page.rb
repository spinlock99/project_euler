class StaticPage
  class << self
    def palindrome( number )
      number_string = number.to_s
      reverse_number_string = number_string.reverse
      ((number_string <=> reverse_number_string) == 0) ? true : false
    end
  end
end
