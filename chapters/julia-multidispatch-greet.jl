# Define a method for greeting a child
function greet(name::String, age::Int)
    if age < 13
        println("Hi $name! You're just a kid!")
    else
        println("Hello $name! Nice to meet you!")
    end
end

# Define a method for greeting a teenager
function greet(name::String, age::Int)
    if age >= 13 && age < 20
        println("Hey $name! What's up, teenager?")
    else
        # If the age doesn't match any specific method, call the default method
        greet(name, age, "adult")
    end
end

# Define a default method for greeting adults
function greet(name::String, age::Int, status::String)
    println("Greetings $status $name!")
end

# Call the greet function with different arguments
greet("Alice", 8)
greet("Bob", 16)
greet("Charlie", 30)
