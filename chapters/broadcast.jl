using Test

# Test add_arrays_with_broadcasting function
@test add_arrays_with_broadcasting([1, 2, 3], [4, 5, 6]) == [5, 7, 9]
@test_throws ArgumentError add_arrays_with_broadcasting([1, 2, 3], [4, 5]) # Broadcasting requires arrays of the same size

# Function to add two arrays using broadcasting
function add_arrays_with_broadcasting(arr1, arr2)
    return arr1 .+ arr2
end

# Main program
function main()
    println("Enter the elements of the first array (space-separated):")
    input1 = #test here
    arr1 = parse.(Int, split(input1))

    println("Enter the elements of the second array (space-separated):")
    input2 = #test here
    arr2 = parse.(Int, split(input2))

    try
        result = add_arrays_with_broadcasting(arr1, arr2)
        println("Result of array addition:")
        println(result)
    catch
        println("Error: Arrays must have the same size for broadcasting.")
    end
end

# Call the main function if run as a script
if abspath(PROGRAM_FILE) == @__FILE__
    main()
end
