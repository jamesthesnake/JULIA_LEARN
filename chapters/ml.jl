using Flux
using Flux: onehotbatch, onecold, crossentropy, throttle

# Define the neural network architecture
model = Chain(
  Dense(784, 32, relu),
  Dense(32, 10),
  softmax
)

# Define the loss function
loss(x, y) = crossentropy(model(x), y)

# Generate dummy training data
x_train = rand(Float32, 784, 1000)
y_train = onehotbatch(rand(1:10, 1000), 1:10)

# Define the optimizer
optimizer = ADAM(0.01)

# Train the model
for i in 1:10
  #put correct Flux function here 
end

# Generate dummy test data
x_test = rand(Float32, #fill in, #fill in)
y_test = onehotbatch(rand(1:10, 100), 1:10)

# Evaluate the model
accuracy(x, y) = mean(onecold(model(x)) .== onecold(y))
acc = accuracy(x_test, y_test)
println("Test accuracy: $acc")
