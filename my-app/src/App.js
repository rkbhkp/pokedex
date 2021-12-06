import logo from './pokeball_gray.png';
import bar from './bar.svg';
import ball from './pokeball_red.svg';
import './App.css';

var db;

var request = window.indexedDB.open("./../../DB/pokedex.sqlite", 3);
request.onerror = function(event) {
  console.log("Why didn't you allow my web app to use IndexedDB?!");
};
request.onsuccess = function(event) {
  db = event.target.result;
};
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

        <div class="fullwidth">
          <div margin-right="auto">
          <img src={logo} className="App-logo" alt="logo" />
          </div>
        </div>


        <content className="App-content">
        <img src={logo} className="App-logo" alt="logo" />
          <p>
            Edit <code>src/App.js</code> and save to reload.
          </p>
          <a
            className="App-link"
            href="https://reactjs.org"
            target="_blank"
            rel="noopener noreferrer"
            margin-right="auto"
          >
            Learn React
          </a>
        </content>
      </div>
    </div>
  );
}

export default App;
