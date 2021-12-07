import logo from './pokeball_gray.png';
import bar from './bar.png';
import redball from './pokeball_red.svg';
import './App.css';

/*// 1. Create the button
var button = document.createElement("button");
button.innerHTML = "Do Something";

// 2. Append somewhere
//var body = document.getElementsByTagName("body")[0];
//body.appendChild(button);

// 3. Add event handler
button.addEventListener ("click", function() {
  alert("did something");
});*/
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
               <button id="home_button"></button>
               <button id="home_button"></button>
               <button id="home_button"></button>
 
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
