using OmniBio
using Documenter

DocMeta.setdocmeta!(OmniBio, :DocTestSetup, :(using OmniBio); recursive=true)

makedocs(;
    modules=[OmniBio],
    authors="Michael Persico <michael.a.persico@gmail.com> and contributors",
    repo="https://github.com/M-PERSIC/OmniBio.jl/blob/{commit}{path}#{line}",
    sitename="OmniBio.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://M-PERSIC.github.io/OmniBio.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/M-PERSIC/OmniBio.jl",
    devbranch="main",
)
