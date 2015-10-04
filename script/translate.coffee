handlebars = require('handlebars')
en = require('../lang/en')
sk = require('../lang/sk')
fs = require('fs')

file_buffer = fs.readFileSync('./template/index.handlebar')
file_content = file_buffer.toString()
template = handlebars.compile(file_content)

fs.writeFile('./index.html', template(sk))
fs.writeFile('./index_en.html', template(en))
