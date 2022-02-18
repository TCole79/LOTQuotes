const tolkienApi = function() {
  let request = new XMLHttpRequest();

  request.open("GET", "http://localhost:3000/tolkien", true);
  // request.setRequestHeader("Access-Control-Allow-Origin", "http://localhost:3000");
  // request.setRequestHeader("Access-Control-Allow-Credentials", true);
  request.onload = function() {
    // Begin accessing JSON data here
    console.log("Data test", this.response);
    let data = JSON.parse(this.response);

    if (request.status >= 200 && request.status < 400) {
      document.getElementById(
        "tolkien"
      ).innerHTML = `Quote: ${data.text} Author: ${data.character}`;
    } else {
      console.log("error");
    }
  };

  request.send();
}; 
