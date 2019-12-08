"use strict"
const getStdin = require("get-stdin")

/** @type {function(string): string} */
const uniq = lines => [...new Set(lines.split("\n"))].join("\n")

/** @type {function(): Promise<void>} */
const main = (async () => console.log(uniq(await getStdin())))

main()
