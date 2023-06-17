module Utils
using Distributions, QuadGK, InverseFunctions, Roots
greet() = print("Hello World!")

function norm(x)
   g = (1/sqrt(2*pi))*exp(-(1/2)*x^2)
   return g
end

function pscore(x)
   integral,err = quadgk(Utils.norm,-800,x)
   return(integral)
end

function percentile(x)
   f(y) = pscore(y) - x
   b=Roots.find_zero(f,0)
   return(b)
end


end # module Utils
