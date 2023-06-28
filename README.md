# CGcoefficient.jl

[![License](http://img.shields.io/badge/license-MIT-brightgreen.svg?style=flat)](LICENSE)
[![CI](https://github.com/0382/CGcoefficient.jl/actions/workflows/CI.yml/badge.svg)](https://github.com/0382/CGcoefficient.jl/actions/workflows/CI.yml)
[![codecov.io](http://codecov.io/github/0382/CGcoefficient.jl/coverage.svg?branch=master)](http://codecov.io/github/0382/CGcoefficient.jl?branch=master)
[![](https://img.shields.io/badge/docs-dev-blue.svg)](https://0382.github.io/CGcoefficient.jl/dev)

[[中文](README_zh.md)]

A package to calculate CG-coefficient, Racah coefficient, and Wigner 3j, 6j, 9j symbols.

One can get the exact result with `SqrtRational` type, which use `BigInt` to avoid overflow. And we also offer float version for numeric calculation, which is about twice faster than [GNU Scientific Library](https://www.gnu.org/software/gsl/).

I also rewrite the float version with c++ for numeric calculation: [WignerSymbol](https://github.com/0382/WignerSymbol).

For more details and the calculation formula, please see the document [![](https://img.shields.io/badge/docs-dev-blue.svg)](https://0382.github.io/CGcoefficient.jl/dev).

### Install

Just start a Julia REPL, and install it
```julia-repl
julia> ]
pkg> add CGcoefficient
```

### Example

```julia-repl
julia> CG(1,2,3,1,1,2)
√(2//3)

julia> nineJ(1,2,3,4,5,6,3,6,9)
1//1274√(3//5)

julia> f6j(6,6,6,6,6,6)
-0.07142857142857142
```

For more examples please see the document.

### Reference

- [https://github.com/ManyBodyPhysics/CENS](https://github.com/ManyBodyPhysics/CENS)
- D. A. Varshalovich, A. N. Moskalev and V. K. Khersonskii, *Quantum Theory of Angular Momentum*, (World Scientific, 1988).