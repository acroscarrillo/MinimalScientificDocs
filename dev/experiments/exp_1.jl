# # [Plot and Histogram](@id exp)
# The following page has been generated entirely within a Julia file (`/docs/src/experiments/exp_1.jl`), see its source code to see how easy it was done. As a show case, here's some random plots using in this case `Plots.jl`. Dont forget to add any necessary packages to the enviroment and to import them.

# ### A familiar normal histogram
using Pkg
Pkg.instantiate() # fixes an error where GitHub forgets to instantiate the enviroment.

using Plots, LaTeXStrings

histogram(randn(100000,1),legend=false,xlabel=L"X",ylabel="counts")

# ### A friendly Wiener process plot
# No need to import anything again, it was imported above (remember this run in the same Julia file).
function Wiener_process(T, N, σ, W_0; N_processes=1)
    dt = T / N  # Time step size
    t = range(0, T, length=N+1)  # Time points
    dW = sqrt(dt) .* randn(N, N_processes)  # Wiener increments for all processes
    W = σ .* cumsum([zeros(1, N_processes); dW], dims=1)  # Compute Wiener process paths
    return t, W
end

plot(Wiener_process(10, 1000, 1, 0, N_processes=10),ylabel=L"W",xlabel=L"t",legend=false)