class Solver
  def factorial(integer)
    raise Exception, 'Integer must be a positive whole number' if integer.negative?

    result = 1

    while integer.positive?
      result *= integer
      integer -= 1
    end

    result
  end

  def reverse(string)
    string.reverse
  end

  def fizzbuzz(number)
    case number
    when (number % 3).zero? && (number % 5).zero?
      'fizzbuzz'
    when (number % 3).zero?
      'fizz'
    when (number % 5).zero?
      'buzz'
    else
      number.to_s
    end
  end
end
