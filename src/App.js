import './App.css';

import Home from './containers/home'
import About from './containers/about'
import NavigationBar from './components/nav_bar'

import { Route, Redirect, Switch, HashRouter} from 'react-router-dom'

function App() {
  return (
    <div className="app">
      <HashRouter>
        <NavigationBar></NavigationBar>
        <Switch>
          <Route exact path='/' render={() =>(
            <Redirect to='/home'/>
          )}/>
          <Route path='/home' component={Home}></Route>
          <Route path='/about' component={About}></Route>
        </Switch>
      </HashRouter>
    </div>
  );
}

export default App;
