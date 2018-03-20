# Study
## A simple project starter to aid learning

This is a starter project set up for testing and benchmarking. Happy hacking!

## Build

Build your library and executable. This is one way to discover if your project compiles.

```shell
> stack build
Registering study-0.1.0...
```

There is _no need_ to run `stack install`, unless you want your app copied to `~/.local/bin`
so that it can be called from anywhere as a regular binary.

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

Basic benchmarking is quite simple.

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

You can go much deeper, but that's out of scope for what you'll need here.

Here is one example that this project is set up for:

```shell
> time ./.stack-work/install/x86_64-osx/lts-9.21/8.0.2/bin/study +RTS -s
Hello World
         128,184 bytes allocated in the heap
          46,248 bytes copied during GC
          96,648 bytes maximum residency (1 sample(s))
          46,712 bytes maximum slop
               3 MB total memory in use (0 MB lost due to fragmentation)

                                     Tot time (elapsed)  Avg pause  Max pause
  Gen  0         0 colls,     0 par    0.000s   0.000s     0.0000s    0.0000s
  Gen  1         1 colls,     0 par    0.000s   0.000s     0.0003s    0.0003s

  Parallel GC work balance: nan% (serial 0%, perfect 100%)

  TASKS: 10 (1 bound, 9 peak workers (9 total), using -N4)

  SPARKS: 0 (0 converted, 0 overflowed, 0 dud, 0 GC'd, 0 fizzled)

  INIT    time    0.001s  (  0.003s elapsed)
  MUT     time    0.000s  ( -0.000s elapsed)
  GC      time    0.000s  (  0.000s elapsed)
  EXIT    time    0.000s  (  0.001s elapsed)
  Total   time    0.003s  (  0.004s elapsed)

  Alloc rate    0 bytes per MUT second

  Productivity  64.0% of total user, 13.7% of total elapsed # That could be better!

gc_alloc_block_sync: 0
whitehole_spin: 0
gen[0].sync: 0
gen[1].sync: 0
        0.00 real         0.00 user         0.00 sys
```
