# # [Animations](@id exp)


# ### An interesting animation
# Yes sir, animations are supported too!

using Pkg
Pkg.instantiate()

using Plots

# Function to generate Wiener process paths
function geometric_brownian_motion(T, N, μ, σ, S_0; N_processes=1)
    dt = T / N  # Time step size
    t = range(0, T, length=N+1)  # Time points
    dW = sqrt(dt) .* randn(N, N_processes)  # Wiener increments
    W = cumsum([zeros(1, N_processes); dW], dims=1)  # Wiener process paths
    S = S_0 .* exp.((μ - 0.5 * σ^2) .* t .+ σ .* W)
    return t, S
end

# Generate GBM data
T, N, μ, σ, S_0, N_processes = 10, 100, 0.15, 0.2, 100, 10
t, S = geometric_brownian_motion(T, N, μ, σ, S_0, N_processes = N_processes)

# Create animation
@gif for i in 1:N+1
    plot(t[1:i], S[1:i, :], xlabel=L"t", ylabel=L"S(t)", title="Geometric Brownian Motion Simulation", legend=false, lw=2, grid=true, xlims=(0, T), ylims=(minimum(S), maximum(S)))
end

# ### A rather puzzling heatmap
# This is a heatmap of a random normal matrix.
heatmap(randn(100,100))