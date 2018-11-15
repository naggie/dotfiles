var hipku = require('./hipku.js');
var ip_haiku = hipku.encode(process.argv[2]);
process.stdout.write(ip_haiku);
