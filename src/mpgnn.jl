using LinearAlgebra
using Plots
using Colors
include("message_passing.jl")


function MPGNN(x₀, edge_index, γ=0.1, iters=1)
    """
    Docs
    Input:

    Output:
    """
    x₁ = ConvLayer(x₀, edge_index, γ)
    X = [x₀, x₁]
    # while length(unique(X[end-1])) < length(unique(X[end]))
    #     xᵗ⁺¹ = ConvLayer(X[end], edge_index, γ)
    #     push!(X, xᵗ⁺¹)
    # end
    for _ ∈ 1:iters-1
        xᵗ⁺¹ = ConvLayer(X[end], edge_index, γ)
        push!(X, xᵗ⁺¹)
    end
    return Coloring(X[end])
end

function ConvLayer(xᵗ, edge_index, γ)
    """
    Docs
    Input:

    Output:
    """
    ℳ = MessagePassing(xᵗ, edge_index)
    xᵗ⁺¹ = Update(xᵗ, ℳ, γ)
    return xᵗ⁺¹
end

function Update(xᵗ, ℳ, γ)
    """
    Docs
    Input:

    Output:
    """
    # n = length(xᵗ)
    # γ = rand(1e-4 : .1e-20 : 1e-3)
    return sigmoid.(γ .* xᵗ + γ .* ℳ)
end
