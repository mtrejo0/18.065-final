import React from "react";
import axios from "axios";

import eventBus from "../util/eventbus";



class Stats extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      image: "",
      stats: [],
      loading: false,
      messages: [],
      errors: []
    };
  }

  componentDidMount() {
    eventBus.on("image_submit", (data) => {
      this.getStats()
    });
  }

  componentWillUnmount() {
    eventBus.remove("image_submit");
  }

  getStats() {
    this.setState({loading: true})
    axios
      .get(`http://localhost:5000//stats`)
      .then((res) => {
        this.setState({stats: res.data.stats})
        this.addMessage(res.data.message)
      })
      .catch((error) => {
        this.addError(error.response.data.error)
      })
      .then(() => {
        this.setState({loading: false})
        this.clearMessages()
      });
  }

  addMessage(message){
    this.setState({messages: this.state.messages.concat([message])})
  }

  addError(error){
    this.setState({errors: this.state.errors.concat([error])})
  }

  clearMessages() {
    setInterval(
      () => this.setState({messages: [], errors: []})
      , 5000);
  }


  render() {
    return (
      <div className='stats'>
        {this.state.messages ? this.state.messages.map( message => 
          <p key={message} style={{color:"green"}}>{message}</p>
        ): null}
        {this.state.errors ? this.state.errors.map( error => 
          <p key={error} style={{color:"red"}}>{error}</p>
        ): null}
        {this.state.loading ? <p>Loading ...</p>: null}
        {this.state.stats.length ?  
          this.state.stats.map( stat => <p>{stat.name}, {stat.value}</p>)
        : null}
      </div>
    );
  }
}

export default Stats;
