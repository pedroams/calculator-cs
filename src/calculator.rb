# Calculator class
class Calculator

  # This method makes a sum between two numbers
  def sum(number1, number2)
    number1 + number2
  end

  # This method makes a subtract between two numbers
  def subtract(number1, number2)
    number1 - number2
  end

  # This method makes a sum between two numbers
  def multiply(number1, number2)
    number1 * number2
  end

  # This method makes a divide
  def divide(number1, number2)
    number2.zero? ? 'Erro! Divisão por zero não é possível' : number1 / number2
  end

  # This method clean the screen
  def clean_screen
    sleep 1
    system 'clear'
  end

end

