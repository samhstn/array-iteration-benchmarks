# Array iteration benchmarks

A comparison of language speeds for iterating through arrays.

### Why

I would like to know the performance difference for the following operations in the languages I use.

Operations being tested:

+ Finding duplicate strings in a long array

Languages being tested:

+ Node
+ Elixir

### Findings

Test your own findings by running:

```bash
./run.sh
```

My personal findings were that elixir is actually pretty slow in comparison to nodejs.

### Results

The result of running

```bash
echo "\n\`\`\`bash\n$(./run.sh)\n\`\`\`" >> README.md
```

with nothing below this line, produced the following for me:

```bash
generating json with array length: 10000
Node
Number of duplicates: 0
Execution time 71ms
Elixir
Number of duplicates: 0
Execution time 1603ms
```
