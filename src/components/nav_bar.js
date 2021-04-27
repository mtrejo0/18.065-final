import React from 'react'

import {NavLink} from 'react-router-dom'

import '../styles/nav_bar.css'

class NavigationBar extends React.Component {

    render() {
        var active = {
            fontWeight: 'bold',
            color: '#6b000e'
        }

        return (
            <div>
                <ul className='nav-ul'>
                    <li className='nav-li'><NavLink to="/home" activeStyle={active}>Home</NavLink></li>
                    <li className='nav-li'><NavLink to="/about" activeStyle={active}>About</NavLink></li>
                </ul>
            </div>
        )
    }
}

export default NavigationBar;