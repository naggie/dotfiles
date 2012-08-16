#!/usr/local/bin/node
walker = require('walker')
fs = require('fs')
crypto = require('crypto')
async = require('async')

path = process.argv[2] ? process.argv[2] : __dirname

// size -> files
var sizes = {}

// files that may have duplicates based on filesize
var suspects = []

// hash -> files
var dupes = {}

walker(path).on('file',function(file) {
        // aggregate by size
        var size = fs.statSync(file).size
        sizes[size] || (sizes[size] = [])
        sizes[size].push(file)
}).on('end',function() {
        for (var size in sizes) {
                var files = sizes[size]
                if (files.length < 2) continue
                // all files following are suspected of being duplicates, build a hash map
                suspects = suspects.concat(files)
                async.forEach(suspects,function(file,done) {
                        getFileHash(file,function(hash) {
                                dupes[hash] || (dupes[hash] = [])
                                dupes[hash].push(file)
                                done()
                        })
                },complete)
        }
})

function complete(err) {
        console.log(dupes)
}

function getFileHash(file, cb) {
        var hash = crypto.createHash('md5')

        var h = fs.ReadStream(file)
        h.on('data', function(d) {
                hash.update(d)
        })

        h.on('end',function() {
                cb( hash.digest('hex') )
        })
}