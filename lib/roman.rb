class Roman

  def initialize
    @simbols = {'M': 1000, 'CM': 900, 'D': 500, 'CD': 400, 'C': 100, "XC":90, 
                 'L': 50, 'XL': 40, 'X': 10, 'IX': 9, 'V': 5, 'IV': 4, 'I': 1}
  end

  def convert_number_to_roman(natural_number)
    find(natural_number)
  end

  def find(natural_number, roman_simbol = '')
    roman_value = 0
    @simbols.each do |key, value|
      if value <= natural_number
        roman_simbol << key.to_s
        roman_value = value
        break
      end
    end

    natural_number = natural_number - roman_value
    return roman_simbol if natural_number == 0

    find(natural_number, roman_simbol)
  end
end