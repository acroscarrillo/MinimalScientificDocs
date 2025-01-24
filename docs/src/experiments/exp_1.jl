# # [Plot and Histogram](@id exp)
# The following page has been generated entirely within a Julia script, see its source code to see how easy it was done. As a show case, here's some random plots using in this case `Plots.jl`.

# ### An interesting plot
using Pkg
Pkg.instantiate()

using Plots

plot(rand(100,2))



# ### A rather boring normal
histogram(randn(10000,1))