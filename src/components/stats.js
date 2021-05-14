import React from "react";
import axios from "axios";

import eventBus from "../util/eventbus";

import "../styles/stats.css"

class Stats extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      stats: [],
      most_similar: "",
      most_similar_stats: [],
      most_similar_image_path: '',
      loading: false,
      finished: false,
      
      messages: [],
      errors: []
    };
  }

  componentDidMount() {
    eventBus.on("image_submit", (data) => {
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
    axios
      .post(`http://localhost:5000/stats`, data, {})
      .then((res) => {
        this.setState({
          stats: res.data.stats, 
          most_similar: res.data.most_similar, 
          most_similar_stats: res.data.most_similar_stats,
          most_similar_image_path: res.data.most_similar_image_path,
          finished: true
        })
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
        {this.state.finished ? 
          <div className='next'>
            <div className='stats'>
              <p>Image stats:</p>
              {this.state.stats.map( stat => <p key={stat.name}><strong>{stat.name}</strong>, {stat.value}</p>)}
            </div>
            <div className='stats'>
              <p>Stats most similar to <a href={`https://bulbapedia.bulbagarden.net/wiki/${this.state.most_similar}_(Pokémon)`} target='_blank'><strong>{this.state.most_similar}</strong></a></p>
              {this.state.most_similar_stats.map( stat => <p key={stat.name}><strong>{stat.name}</strong>, {stat.value}</p>)}
            </div>
            {/* {this.state.most_similar_image_path}
            <img src={this.state.most_similar_image_path} alt='Pokemon' className='poke-image'/> */}
          </div>: null}
      </div>
    );
  }
}

export default Stats;
