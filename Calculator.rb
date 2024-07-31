def calculate(num1, operator, num2)
    case operator
    when '+'
        num1 + num2
    when '-'
        num1 - num2
    when '*'
        num1 * num2
    when '/'
        num1 != 0 ? num1 / num2 : "Errror: Division by zero"
    else
        "Error: Invalid operator"
    end
end

puts "Welcome to the Simple Calculator By TT!"
puts "Enter 'q' to quit."

loop do 
    print "Enter first number: "
    num1 = gets.chomp
    break ifnum1.downcase == 'q'

    num1 = num1.to_f

    print "Enter operator (+, -, *, /): "
    operator = gets.chomp
    break if operator.downcase == 'q'

    print "Enter second number: "
    num2 = gets.chomp
    break if num2.downcase == 'q'

    num2 = num2.to_f

    result = calculate(num1, operator, num2)
    puts "Result: #{result}"
    puts
end

puts "Thank you for using the Simple Calculator!"