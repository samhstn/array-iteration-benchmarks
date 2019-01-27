# Array iteration benchmarks

A comparison of language speeds for iterating through arrays.

### Why

I would like to know the performance difference for the following operations in the languages I use.

Operations being tested:

+ Finding duplicate strings in a long array

Languages being tested:

+ Node
+ Elixir

### Findings

Test your own findings by running:

```bash
mix deps.get
./run.sh
```

My personal findings were that Elixir is roughly 7x _faster_ than Nodejs.

> Your results will vary depending on the number of cores your processor has.
> Elixir parallelises the computation of `Enum.uniq` so Array uniqueness is _very_ fast.

### Results

The result of running

```bash
./run.sh
```

produced the following for me:

```bash
generating json with array length: 10000
Node
Number of duplicates: 0
Execution time 71ms
Elixir
Number of duplicates: 0
Execution time 10ms
```

```sh
$ node -v
v11.6.0
$ elixir -v
Elixir 1.7.4
```
