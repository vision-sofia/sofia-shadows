#!/usr/bin/env coffee

fs = require "fs"

data = fs.readFileSync(process.argv[2], "utf-8")
parsed = JSON.parse data

for f in parsed.features
  f.properties.height = f.properties.height_copernicus
  delete f.properties.height_copernicus

fs.writeFileSync(process.argv[3], JSON.stringify(parsed, null, 2))

