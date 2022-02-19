
$(document).ready(function (e) {
  $("#favoritesModal").click(function (e) {
    e.preventDefault();
    const mymodal = $("#exampleModalCenter");
    let favoriteQuotes = localStorage.getItem("favoriteQuotes");
    favoriteQuotes = JSON.parse(favoriteQuotes);
    let content = `<ul>`;

    favoriteQuotes.map((quote) => {
      if (Object.keys(quote).length > 0) {
        return (content += `<li>"${quote.text}" ~ ${quote.character}</li>`);
      }
    });

    content += `</ul>`;
    $(".modal-body").html(content);

    mymodal.modal("show");
  });
});
