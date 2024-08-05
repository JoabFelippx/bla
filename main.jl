function bisection(a, b, f, tol)
    if f(a) * f(b) > 0
        error("f(a) and f(b) must have opposite signs")
    end
    while b - a > tol
        c = (a + b) / 2
        if f(c) == 0
            return c
        elseif f(a) * f(c) < 0
            b = c
        else
            a = c
        end
    end
    return (a + b) / 2
end


#3.2.1
f(x) = sqrt(x) - cos(x)
tol = 1e-4
a, b = 0, 1
println(bisection(a, b, f, tol))


#outro
function bissecao(f, a, b, tol)
    if f(a) * f(b) > 0
        error("f(a) e f(b) devem ter sinais opostos")
    end
    while b - a > tol
        c = (a + b) / 2
        if f(c) == 0
            return c
        elseif f(a) * f(c) < 0
            b = c
        else
            a = c
        end
    end
    return (a + b) / 2
end

f(x) = 5*sin(x^2) - exp(x/10)
tol = 1e-5
a, b = 0.4, 0.5
println(bissecao(f, a, b, tol))

tol = 1e-5
a, b = 1.7, 1.8
println(bissecao(f, a, b, tol))

tol = 1e-5
a, b = 2.5, 2.6
println(bissecao(f, a, b, tol))
