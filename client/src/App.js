import React from 'react';
import logo from './logo.svg';
import './App.css';
import { BrowserRouter as Router, Route, Link } from 'react-router-dom';
import OtherPage from './OtherPage';
import Fib from './Fib';

function App() {
  return (
    <Router>
        <div className="App">
            <header className="App-header">
                <img src={logo} className="App-logo" alt="logo" />
<<<<<<< HEAD
                <h2>Bienvenido mamaverga v2 Kubernetes + Skaffold!</h2>
=======
                <h2>Bienvenido mamaverga vKubernetes</h2>
>>>>>>> 683cfa70f03ce1fe91f4974e8c148e066af30090
                <Link to="/">Home</Link>
                <Link to="/otherPage">Otra :S</Link>
            </header>
            <div>
                <Route exact path="/" component={Fib} />
                <Route path="/otherPage" component={OtherPage} />
            </div>
        </div>
    </Router>
  );
}

export default App;
