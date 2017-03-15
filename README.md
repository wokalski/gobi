# gobi

`gobi` is a simple proof of concept OCaml build tool for iOS. The ultimate goal
is a simple and self contained tool that can be installed locally to a project.

The name comes from the Gobi Desert, which is the [only desert with wild
camels](http://animals.nationalgeographic.com/animals/mammals/bactrian-camel/).

*Literally* nothing in this project is carefully designed so feel free to
create issues (see below).

As a POC it lets you build a fat library for iOS from a single `.ml` source (I
haven't tested it with multiple sources) in 3 simple steps:

1. Clone
2. `./install.sh`
3. `./gobi hello.ml`

The `gobi` script creates `libGobi.a` in `build` directory. The attached Xcode
project has an iOS target which links to the library and executes code
contained in it.

You can verify that it works by double clicking the project and clicking run.

# Using with [Reason](https://github.com/facebook/reason)
Gobi works with [Reason](https://github.com/facebook/reason) by assuming `refmt` is available globally. The simplest way to avoid installing Reason globally, for this project, is to use npm (as explained on Reason's README) and then run `PATH=$PATH:path/to/reason/_build/ocamlfind/bin/ ./gobi hello.re`.

# Issues

This project is just Proof of Concept. All ideas are welcome so please create
an issue if you have one!
