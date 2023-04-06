console.log "CoffeeScript Calculator\n-----------------------"

readline = require('readline').createInterface({
  input: process.stdin,
  output: process.stdout
})

readline.question("Enter the first number: ", (num1) ->
   readline.question("Enter the second number: ", (num2) ->
    readline.question("Choose a operation:\n1) Addition\n2) Subtraction\n3) Division\n4) Multiplication\n", (calcType) ->
      num1 = parseInt(num1)
      num2 = parseInt(num2)
      result = null

      switch calcType
        when '1'
          result = num1 + num2
        when '2'
          result = num1 - num2
        when '3'
          result = num1 / num2
        when '4'
          result = num1 * num2
        else
          console.log("Invalid operator")

      if result != null
        console.log("Result: #{result}")

      readline.close()
    )
  )
)