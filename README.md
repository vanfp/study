# Study
## A simple project starter to aid learning

<img  width="400" src="https://www.google.ca/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=2ahUKEwj3u8vKt_rZAhVhVWMKHQNZBxoQjRx6BAgAEAU&url=http%3A%2F%2Fcomputingstories.com%2Fhaskell%2520stories%2Fhaskell-impressions.html&psig=AOvVaw16AG2ehieADotJaepqFnzT&ust=1521619248353009">


This is a starter project set up for testing and benchmarking. Happy hacking!

## Build

Download dependencies, build your library and compile executable.

The dependency part may take a while :coffee::walking_woman:

```shell
> stack build
study-0.1.0: configure (lib + exe)
# ...
Registering study-0.1.0...
```

There is _no need_ to run `stack install`, unless you want your app copied to `~/.local/bin`
so that it can be called from anywhere as a regular binary.

If you want to get GHC to G

## Run

```shell
> stack exec study
Hello World
```

## REPL

Drop into a `ghci` session with your project preloaded.

```shell
> stack repl
study-0.1.0: configure (lib + exe)
# ...
Ok, modules loaded: Main, Study.

*Main Study
> hello
"Hello World"

*Main Study
> :q # Exit REPL
```

## Tests

```shell
> stack test
# ...
study-0.1.0: test (suite: study-doctest) # Doctests

Examples: 5  Tried: 5  Errors: 0  Failures: 0  Failures: 0

study-0.1.0: Test suite study-doctest passed
study-0.1.0: test (suite: study-test) # Unit tests


All 0 tests passed (0.00s)

study-0.1.0: Test suite study-test passed
Completed 2 action(s).
```

Configured for both unit test and doctests.
Please note that the doctest output is _not_ colourized.

## Docs

To open the HTML docs only for your library:

```shell
> stack haddock study --open
```

To open HTML docs for _everything_ in your project, including dependencies:

```shell
> stack haddock --open
```

## Benchmarks

This project is configured for simple benchmarking.

```shell
> stack bench
# ...
time                 26.97 ns   (23.35 ns .. 31.92 ns)
                     0.871 R²   (0.834 R² .. 0.924 R²)
mean                 30.12 ns   (27.12 ns .. 34.06 ns)
std dev              10.84 ns   (8.861 ns .. 13.56 ns)
variance introduced by outliers: 100% (severely inflated)

Benchmark study-benchmarks: FINISH
Completed 2 action(s).
```

[Critereon](http://www.serpentine.com/criterion/tutorial.html) is included as a dependency.
If you would like to do some more traditional microbenching, start in `/benchmark/Main.hs`

You can go much deeper, but that's out of scope for what we'll be covering.
