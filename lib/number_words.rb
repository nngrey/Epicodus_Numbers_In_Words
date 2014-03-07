def group_three(number)
  one_nineteen = {1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 =>
    "nine", 10 => "ten", 11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "18", 19 => "nineteen"}
    tens = {2 => "twenty ", 3 => "thirty ",4 => "forty ", 5 => "fifty ", 6 => "sixty ", 7 => "seventy ", 8 => "eighty ", 9 => "ninety "}
    results = []

    if number < 1000 && number > 99
    results.push(one_nineteen[number/100] + " hundred ")
    number = number % 100
    end
    if number < 100 && number > 19
      results.push(tens[number/10])
      number = number % 10
    end
    if number < 20 && number > 0
      results.push(one_nineteen[number])
    end
    results.join
  end

def number_seperator(number)

    number_array = []
    big_numbers = {0 => "", 1 => " thousand", 2 => " million", 3 => " billion", 4 => " trillion"}
    while number > 0
      number_array.push(group_three(number % 1000))
      number = number / 1000
    end
    number_array = number_array.map.with_index do |num, index|
      num + big_numbers[index]
    end
  number_array.reverse.join(", ")
end
print number_seperator(4569877895615)


