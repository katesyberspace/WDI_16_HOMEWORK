import React from 'react'
const estimateStrength = require('./estimateStrength')

class PasswordInput extends React.Component{

  constructor(props){
    super()
    this.handleChange = this.handleChange.bind(this)
    this.state = {
      content: ''
      
    }    
  }

  handleChange(event){
    event.persist()
    this.setState((prevState, props)=>{
      return { content: event.target.value }
    })
    
  }

  render(){
    const content = this.state.content
    const score = estimateStrength(content).score
    var output = ''
    if (score > 4){
      output = 'amazing password'
    } else if (score > 3){
      output = 'ok password'
    } else if (score > 2){
      output = 'your password sucks'
    } else {
      output = 'your idenity has already been stolen'
    }

    return <div>
      <input onChange={this.handleChange} type="text"/>
      <span>{output}</span>


    </div>
  }



}


export default PasswordInput