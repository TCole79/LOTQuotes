$(document).ready(function () {
  $(".unFavorite").hide();

  let quoteId = $(".favorite").data("quote-id");
  let quote = {};
  console.log("quoteId", quoteId);

  $(".generate-button").on("click", function () {
    
    let request = new XMLHttpRequest();

    request.open("GET", "http://localhost:3000/tolkien", true);

    request.onload = function () {
      let data = JSON.parse(this.response);

      if (request.status >= 200 && request.status < 400) {
        document.getElementById(
          "tolkien"
        ).innerHTML = `"${data.text}" ~ ${data.character}`;
        quoteId = data.id;
        quote = data;
        let arr = localStorage.getItem("favorite");
        if (arr !== null) {
          arr = arr.split(",");
          if (arr.find((x) => x === quoteId.toString())) {
            $(".unFavorite").show();
            $(".favorite").hide();
          } else {
            $(".unFavorite").hide();
            $(".favorite").show();
          }
        }
      } else {
        console.log("There was an error.");
      }
    };
    request.send();
  });

  // toggle favorite
  let arr = localStorage.getItem("favorite");
  if (arr !== null) {
    arr = arr.split(",");
    if (arr.find((x) => x === quoteId.toString())) {
      $(".unFavorite").show();
      $(".favorite").hide();
    } else {
      $(".unFavorite").hide();
      $(".favorite").show();
    }
  }

  $(".favorite").on("click", (event) => {
    let arr = localStorage.getItem("favorite");
    let favoriteQuotes = localStorage.getItem("favoriteQuotes");
    favoriteQuotes = JSON.parse(favoriteQuotes);
    if (arr === null) {
      arr = [];
      favoriteQuotes = [];
      arr.push(quoteId);
      favoriteQuotes.push(quote);
      localStorage.setItem("favorite", arr);
      localStorage.setItem("favoriteQuotes", JSON.stringify(favoriteQuotes));
    } else {
      arr = arr.split(",");
      if (!arr.find((x) => x === quoteId.toString())) {
        arr.push(quoteId);
        localStorage.setItem("favorite", arr);
        favoriteQuotes.push(quote);
        localStorage.setItem("favoriteQuotes", JSON.stringify(favoriteQuotes));
      }
    }
    $(".unFavorite").show();
    $(".favorite").hide();
  });

  $(".unFavorite").on("click", (event) => {
    let arr = localStorage.getItem("favorite");
    let favoriteQuotes = localStorage.getItem("favoriteQuotes");
    favoriteQuotes = JSON.parse(favoriteQuotes);
    arr = arr.split(",");
    arr = arr.filter((x) => x !== quoteId.toString());
    favoriteQuotes = favoriteQuotes.filter((x) => x.id !== quote.id);
    localStorage.setItem("favorite", arr);
    localStorage.setItem("favoriteQuotes", JSON.stringify(favoriteQuotes));
    $(".unFavorite").hide();
    $(".favorite").show();
  });
});
