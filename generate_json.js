#!/usr/bin/env node

const count = parseInt(process.argv[2]);

const crypto = require('crypto');
const fs = require('fs');
const path = require('path');
const assert = require('assert');

const arr = [];

for (let i = 0; i < count; i++) {
  // taken from https://stackoverflow.com/a/27747377
  arr.push(crypto.randomBytes(20).toString('hex'));
}

fs.writeFile(path.join(__dirname, 'strings.json'), JSON.stringify(arr), 'utf8', (err) => assert(!err, err));
