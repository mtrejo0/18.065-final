import React from 'react'

import FormImage from '../components/form_image'

import Stats from '../components/stats'

import "../styles/home.css"



const Home = () => {
    

    return <div className='center'>
        <h1>Who's that Pokemon!</h1>
        <div className='home'>
            <FormImage></FormImage>
            <Stats></Stats>
        </div>
        
    </div>
}

export default Home;
