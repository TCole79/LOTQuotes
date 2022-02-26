$(document).ready(function (e) {
  let myModal = $("#exampleModalCenter");
  let mainModal = new bootstrap.Modal(myModal);

  $("#favoritesModal").click(function (e) {
    e.preventDefault();

    let favoriteQuotes = localStorage.getItem("favoriteQuotes");
    favoriteQuotes = JSON.parse(favoriteQuotes);
    let content = `<ul>`;

    favoriteQuotes.map((quote) => {
      if (Object.keys(quote).length > 0) {
        return (content += `<li>"${quote.text}" ~ ${
          quote.character
        } <button class=btn-clipboard-modal value="${
          quote.text + quote.character
        }"> Copy </button> <button class=btn-clipboard-modal-delete value=${
          quote.id
        }> Delete </button> </li>`);
      }
    });

    content += `</ul>`;
    $(".modal-body").html(content);
    myModal.modal("show");

    //this code to delete the quote when the button is pressed
    $(".btn-clipboard-modal-delete").click(function (event) {
      let quoteID = $(this).val();
      let favoriteQuotes = JSON.parse(localStorage.getItem("favoriteQuotes"));
      let updatedFavoriteQuotes = favoriteQuotes.filter((favoriteQuote) => {
        return favoriteQuote.id !== Number(quoteID);
      });
      localStorage.setItem(
        "favoriteQuotes",
        JSON.stringify(updatedFavoriteQuotes)
      );
      mainModal.hide();
    });

    // this code for the modal copy button
    $(".btn-clipboard-modal").click(function (event) {
      let copyID = $(this).val();
      console.log("this test", $(this));
      console.log("val test", copyID);
      navigator.clipboard.writeText(copyID).then(() => {
        // Alert the user that the action took place.
        $("#toasty").toast("show");
        setTimeout(() => {
          $("#toasty").toast("hide");
        }, 3500);
      });
    });
  });
});
