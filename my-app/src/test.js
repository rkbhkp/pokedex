import React, { usestate, Component} from "react";
import { Link } from "react-router-dom";

import logo from './pokeball_gray.png';
import bar from './bar.png';
import redball from './pokeball_red.svg';
import './App.css';



function clickMe() {
  alert("You clicked me!");
}


var arrButtons = [];
var buttonStyle = {
    margin: '10px 10px 10px 0'
};

class ButtonClicks extends React.Component {
  constructor(props) {
    super(props);
    this.onClick = this.onClick.bind(this);
  }
  
  onClick() {
    console.log("hello world");
  }

  render() {
    for (let i = 0; i < 10; i++) { //Moved your loop outside render()'s return
      arrButtons.push(<button id="home_button" onClick={this.onClick}>{i}</button>)
    }
    return (
      <div>
        {arrButtons} {/*Very important to wrap the buttons inside a div*/}
      </div>
    );
  }
}

function App() {
  return (
    <div >
      <div className="App">
        <header className="App-header">

          <p >
            Test
          </p>
        </header >
      

        <div id="body">
        <div id="left-col">
        <div class="container">
          <img src={logo} className="App-logo" alt="logo" />
          <div class="centered">Centered</div>
        </div>
        </div>
        <div id="right-col">
            <div id="inner-right">
            <Link to="/test">
              <button variant="outlined">
                Sign up
              </button>
            </Link>
               <ButtonClicks/>
            </div>
        </div>
    </div>



        <content className="App-content">
          <a >
            DMCA by Nintendo
          </a>
        </content>
      </div>
    </div>
  );
}


export default App;
