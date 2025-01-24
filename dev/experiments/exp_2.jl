# # [Animation](@id exp)


# ### An interesting scatter
# Wow what a scatter plot!
using Pkg
Pkg.instantiate()

using Plots

@gif for n=1:100
    heatmap(randn(100,100))
end

# ### A rather puzzling heatmap
# This is a heatmap of a random normal matrix.
heatmap(randn(100,100))