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
end
