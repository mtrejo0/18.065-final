import React from 'react'

import eventBus from '../util/eventbus'

import "../styles/form_image.css"

class FormImage extends React.Component {
    
    constructor(props) {
      super(props);
      this.state = {file: null, messages: '', errors: ''};
      this.handleSubmit = this.handleSubmit.bind(this);
      this.handleChange = this.handleChange.bind(this);
    }
    
    
    handleSubmit(event) {
      if (!this.validZipCode(this.state.value)) {
        // this.addError('invalid zipcode')
      }
      eventBus.dispatch("zip_code_submit", { message: "zip code sent!", zip_code: this.state.value});
      this.resetForm()
      event.preventDefault();
    }

    handleChange(event) {
      this.setState({
        file: URL.createObjectURL(event.target.files[0])
      })
      eventBus.dispatch("image_submit", {image: this.state.file});
    }


    resetForm(){
      this.setState( prevState => ({ ...prevState, value: ''}));
    }

    addMessage(message){
      this.setState( prevState => ({ ...prevState, messages: this.state.messages.concat([message])}))
    }
    addError(error){
      this.setState( prevState => ({ ...prevState, errors: this.state.errors.concat([error])}))
    }

    clearMessages(){
        setInterval(() => {
          this.setState( prevState => ({ ...prevState, messages: [], errors: []}));
      }, 5000);
    }

    
  
    render() {

      let pokemonImage = this.state.file ? <img src={this.state.file} alt='Pokemon' class='poke-image'/> : null

      return (
        <div class='form'>
          {this.state.messages.length ? this.state.messages.map(
                (message, i) => (
                  <li key={i}>{message}</li>
                )
              )
          : null}
          {this.state.errors.length ? this.state.errors.map(
              (error, i) => (
                  <li key={i}>{error}</li>
              )
            )
          : null}
          <input type="file" onChange={this.handleChange}/>
          {pokemonImage}
        </div>
        
      );
    }
}

export default FormImage