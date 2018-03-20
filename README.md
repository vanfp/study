# [study][]

This is a starter project set up for testing and benchmarking. Happy hacking!

## Build

```shell
stack build
```

## REPL

```shell
stack repl
```


## Tests

```shell
stack test
```

Configured for both Tasty and doctests. Please note that the

## Docs

```shell
> stack haddock
study-0.1.0: unregistering (rebuilding with haddocks)
study-0.1.0: configure (lib + exe)
Configuring study-0.1.0...
study-0.1.0: build (lib + exe)
Preprocessing library study-0.1.0...
[2 of 2] Compiling Paths_study      ( .stack-work/dist/x86_64-osx/Cabal-1.24.2.0/build/autogen/Paths_study.hs, .stack-work/dist/x86_64-osx/Cabal-1.24.2.0/build/Paths_study.o ) [.stack-work/dist/x86_64-osx/Cabal-1.24.2.0/build/autogen/cabal_macros.h changed]
Preprocessing executable 'study' for study-0.1.0...
study-0.1.0: haddock
Running Haddock for study-0.1.0...
Preprocessing library study-0.1.0...
Haddock coverage:
 100% (  5 /  5) in 'Study'
   0% (  0 /  9) in 'Paths_study'
  Missing documentation for:
    # ...
Documentation created:
# ...
Haddock index for snapshot packages already up to date at:
/Users/username/.stack/snapshots/x86_64-osx/lts-9.21/8.0.2/doc/index.html # This line

> open /Users/username/.stack/snapshots/x86_64-osx/lts-9.21/8.0.2/doc/index.html
```

## Benchmarks

```shell
stack bench
```
