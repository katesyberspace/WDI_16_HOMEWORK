const express = require('express')
const app = express()
const PORT = 4567
const ejs = require('ejs')
const _ = require('lodash')
const logger = require('./logger.js')
// const controller = require('./controller.js')

var compliments = [
"Your instructors love you",
"High five = ^5",
"Shut up and take my money",
"It's almost beer o'clock",
"The Force is strong with you"
]

var insults = [
  "you smell awful",
  "your s looks like a 5",
  "your pant legs are tucked into your socks",
  "your left earlobe is longer than your right earlobe",
  "your dog pooped on my lawn"
  ]


colors = ["#FFBF00", "#0080FF","#01DF3A","#FF0080"]



//all aboard the routing train!
app.set('view engine','ejs')

app.use(logger)

app.use(express.static('public'))


app.get('/', function(req, res){
  let compliment = _.sample(compliments)
  let color = _.sample(colors)
  res.render('home', {
    compliment: compliment,
    color: color
  })
})


app.get('/:name', function(req, res){
  let params = req.params
  let compliment1 = _.sample(compliments)
  let compliment2 = _.sample(compliments)
  let insult = _.sample(insults)
  let color = _.sample(colors)
  params['compliment1'] = compliment1
  params['compliment2'] = compliment2
  params['insult'] = insult
  params['color'] = color
  res.render('name', params)
})


app.listen(PORT, () => {
  console.log(`listening at ${PORT}`)
})