import React from "react";
import axios from "axios";

import eventBus from "../util/eventbus";



class Stats extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      image: "",
      stats: [],
      most_similar: "",
      loading: false,
      messages: [],
      errors: []
    };
  }

  componentDidMount() {
    eventBus.on("image_submit", (data) => {
      console.log(data)
      this.getStats(data.image)
    });
  }

  componentWillUnmount() {
    eventBus.remove("image_submit");
  }

  getStats(file) {
    this.setState({loading: true})

    const data = new FormData() 
    data.append('file', file)
    console.warn(file);
    axios
      .post(`http://localhost:5000/stats`, data, {})
      .then((res) => {
        this.setState({stats: res.data.stats, most_similar: res.data.most_similar})
        console.log(res)
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
        <p>Most similar to <strong>{this.state.most_similar}</strong></p>
        {this.state.stats.length ?  
          this.state.stats.map( stat => <p>{stat.name}, {stat.value}</p>)
        : null}
      </div>
    );
  }
}

export default Stats;
