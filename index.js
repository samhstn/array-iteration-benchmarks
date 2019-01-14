#!/usr/bin/env node

const fs = require('fs');
const path = require('path');
const assert = require('assert');

const countDuplicates = (strings) => {
  let count = 0;

  for (let i = 0; i < strings.length - 1; i++) {
    if (strings.indexOf(strings[i]) !== i) {
      count++
    }
  }

  return count;
}

fs.readFile(path.join(__dirname, 'strings.json'), (err, str) => {
  assert(!err, err);

  const strings = JSON.parse(str);

  const start = Date.now();

  const duplicateCount = countDuplicates(strings);

  const end = Date.now();

  console.log('Node');
  console.log(`Number of duplicates: ${duplicateCount}`);
  console.log(`Execution time ${end - start}ms`);
});
