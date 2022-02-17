using Documenter
using CGcoefficient

makedocs(
    modules = [CGcoefficient],
    sitename = "CGcoefficient.jl",
    pages = [
        "Home" => "index.md",
        "Formula" => "formula.md",
        "API" => "api.md"
    ]
)

deploydocs(
    repo = "github.com/0382/CGcoefficient.jl.git",
    target = "build/"
)