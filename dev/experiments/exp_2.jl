# # [Scatter and Heatmap](@id exp)


# ### An interesting scatter
# Wow what a scatter plot!
using Pkg
Pkg.instantiate()

using Plots

scatter(rand(100,2))

# ### A rather puzzling heatmap
# This is a heatmap of a random normal matrix.
heatmap(randn(100,100))