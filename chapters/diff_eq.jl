using DifferentialEquations

# Define the differential equation
function example_diffeq!(du, u, p, t)
    du[1] = # fill in here!
end

# Set the initial condition
u0 = [1.0]

# Set the time span
tspan = (0.0, 5.0)

# Solve the differential equation
prob = ODEProblem(example_diffeq!, u0, tspan)
sol = solve(prob, Tsit5())

# Print the solution
println("Solution at t = 5.0: ", sol(5.0))
