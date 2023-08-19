using OmniBioJulia
using Documenter

DocMeta.setdocmeta!(OmniBioJulia, :DocTestSetup, :(using OmniBioJulia); recursive=true)

makedocs(;
    modules=[OmniBioJulia],
    authors="Michael Persico <michael.a.persico@gmail.com> and contributors",
    repo="https://github.com/M-PERSIC/OmniBioJulia.jl/blob/{commit}{path}#{line}",
    sitename="OmniBioJulia.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://M-PERSIC.github.io/OmniBioJulia.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/M-PERSIC/OmniBioJulia.jl",
    devbranch="main",
)
