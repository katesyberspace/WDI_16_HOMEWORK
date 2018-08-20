const express = require('express')
const app = express()
const PORT = 4567
const ejs = require('ejs')
const _ = require('lodash')
const logger = require('./logger.js')


//all aboard the routing train!
app.set('view engine','ejs')

app.use(logger)

app.use(express.static('public'))


app.get('/', function(request, response){

})


