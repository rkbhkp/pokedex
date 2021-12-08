import React, { usestate } from "react";
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
      arrButtons.push(<button style={buttonStyle} onClick={this.onClick}>{i}</button>)
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
            NATIONAL POKeDEX
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
               <button onClick={clickMe} id="home_button"></button>
               <button onClick={clickMe} id="home_button"></button>
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
