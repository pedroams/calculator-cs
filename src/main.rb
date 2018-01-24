require_relative 'calculator.rb'

def fill_values
  print 'Digite primeiro número para operacão: '
  @number1 = gets.chomp.to_i
  print 'Digite segundo número para operacão : '
  @number2 = gets.chomp.to_i
end

loop do
  puts '-----Calculadora--------'
  puts 'Escolha uma opcão abaixo'
  puts '1 - Soma'
  puts '2 - Subracão'
  puts '3 - Multiplicacão'
  puts '4 - Divisão'
  puts '0 - Sair'
  puts '------------------------'
  option = gets.chomp

  calc = Calculator.new
  case option
  when '1'
    fill_values
    print "Resultado da soma é = #{calc.sum @number1, @number2}"
  when '2'
    fill_values
    print "Resultado da subtracão é = #{calc.subtract @number1, @number2}"
  when '3'
    fill_values
    print "Resultado da multiplicacão é = #{calc.multiply @number1, @number2}"
  when '4'
    fill_values
    result = calc.divide(@number1, @number2)
    if result.is_a? Integer
      print "Resultado da divisao é = #{result}"
    else
      print result
    end
  when '0'
    print 'Saindo...'
  else
    print 'Opcão inválida! Por favor digite uma das opcões válida!'
  end
  calc.clean_screen
  break if option == '0'
end