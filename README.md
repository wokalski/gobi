#gobi

`gobi` is a simple proof of concept OCaml build tool for iOS. The ultimate goal is a simple and self contained tool that can be installed locally to a project.

*Literally* nothing in this project is carefully designed so feel free to create issues (see below).

As a POC it lets you build a fat library for iOS from a single `.ml` source (I haven't tested it with multiple sources) in 3 simple steps:

1. Clone
2. `./install.sh`
3. `./gobi hello.ml`

The `gobi` script creates `libGobi.a` in `build` directory. The attached xcode project has an iOS target which links to the library and executes code contained in it.

You can verify that it works by double clicking the project and clicking run.

#Issues

This project is just Proof of Concept. All ideas are welcome so please create an issue if you have one!

