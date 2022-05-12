module CGcoefficient

export CG, threeJ, sixJ, nineJ, Racah,
       dCG, d3j, d6j, d9j, dRacah,
       SqrtRational,
       exact_sqrt,
       simplify,
       HalfInt,
       iphase,
       is_same_parity,
       check_jm,
       check_couple,
       fCG, f3j, f6j, f9j, fRacah, fbinomial,
       reserve_fbinomial

include("SqrtRational.jl")
include("util.jl")
include("WignerSymbols.jl")
include("floatWignerSymbols.jl")

function __init__()
    global _fbinomial_nmax[] = 67
    global _fbinomial_data[] = Vector{Float64}(undef, fbinomial_data_size(get_fbinomial_nmax()))
    for n = 0:get_fbinomial_nmax()
        for k = 0:div(n, 2)
            get_fbinomial_data()[fbinomial_index(n, k)] = binomial(UInt64(n), UInt64(k))
        end
    end
    nothing
end

end # module CGcoefficient