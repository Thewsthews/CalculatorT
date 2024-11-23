def calculate(num1,num2, operator)
    case operator
    when '+'
        num1 + num2
    when '-'
        num1 - num2
    when '*'
        num1 * num2
    when '/'
        num1 != 0 ? num1 / num2 : "Errror: Division by zero"
    when '^'
        num1 ** num2
    when '%'
        num1 % num2
    else
        "Error: Invalid operator"
    end
end

history = []
memory = 0

puts "Welcome to the Simple Calculator By TT!"
puts "Enter 'q' to quit."

loop do 
    print "Enter first number: "
    num1 = gets.chomp
    break ifnum1.downcase == 'q'

    if num1.downcase == 'ans' && !history.empty?
        num1 = history.last[:result]
    else
        num1 = num1.to_f
    end


    print "Enter operator (+, -, *, /): "
    operator = gets.chomp
    break if operator.downcase == 'q'

    if operator.downcase == 'h'
        puts "Calculation History: "
        history.each_with_index { |calq, index| puts "#{index + 1}: #{calq[:num1]} #{calq[:operator]} #{calq[:num2]} #{calq[:result]}" }
        next
    elsif operator.downcase == 'm'
        print "Memory operation (store/recall/clear): "
        mem_op = gets.chomp.downcase
        case mem_op
        when 'store'
            memory = num1
            puts "Stored #{num1} in memory"
        when 'recall'
            puts "Memory value: {memory}"
        when 'clear'
            memory = 0
            puts "Memory cleared"
        next
        end

    print "Enter second number: "
    num2 = gets.chomp
    break if num2.downcase == 'q'

    if num2.downcase == 'ans' && !history.empty?
        num2 = history.last[:result]
    else
        num2 = num2.to_f
    end


    result = calculate(num1, operator, num2)
    puts "Result: #{result}"

    history << {num1: num1, operator: operator, num2: num2, result: result }
    
    puts
end

puts "Thank you for using the Simple Calculator!"

end
