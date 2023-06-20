using Flux
using Flux: onehotbatch, onecold, crossentropy, throttle
using Flux.Data: DataLoader
using Flux.Optimise: ADAM

# Define the CNN architecture
model = Chain(
    Conv((3, 3), 1=>16, pad=(1, 1), relu),
    MaxPool((2, 2)),
    Conv((3, 3), 16=>32, pad=(1, 1), relu),
    MaxPool((2, 2)),
    x -> reshape(x, :, size(x, 4)),
    Dense(1568, 10),
    softmax,
)

# Load and preprocess the MNIST dataset
train_data, test_data = Flux.Data.MNIST.traindata()
x_train = Flux.Data.MNIST.images(train_data) |> Flux.Data.DataLoader
y_train = Flux.Data.MNIST.labels(train_data) |> Flux.Data.onehotbatch
x_test = Flux.Data.MNIST.images(test_data) |> Flux.Data.DataLoader
y_test = Flux.Data.MNIST.labels(test_data) |> Flux.Data.onehotbatch

# Define the loss function
loss(x, y) = crossentropy(model(x), y)

# Define the accuracy function
accuracy(x, y) = mean(onecold(model(x)) .== onecold(y))

# Define the optimizer
optimizer = ADAM()

# Train the model
function train(model, train_data, test_data, loss, optimizer, epochs)
    for epoch in 1:epochs
        Flux.train!(loss, Flux.params(model), train_data, optimizer)
        acc = accuracy(x_test, y_test)
        @info "Epoch $epoch" acc=acc
    end
end

# Set the number of training epochs
epochs = 10

# Train the model
train(model, x_train, x_test, loss, optimizer, epochs)
