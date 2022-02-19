// document.addEventListener("click", (e) => {
//   const isDropdownButton = e.target.matches("[data-dropdown-button]");
//   if (!isDropdownButton && e.target.closest("[data-dropdown]") !== null) return;

//   let currentDropdown;
//   if (isDropdownButton) {
//     currentDropdown = e.target.closest("[data-dropdown]");
//     currentDropdown.classList.toggle("active");
//   }

//   document.querySelectorAll("[data-dropdown].active").forEach((dropdown) => {
//     if (dropdown === currentDropdown) return;
//     dropdown.classList.remove("active");
//   });
// });

// need a helper function to select a API route per character, depending on a dropdown choice - made one in Q_controller in Ruby

// event listener attached to the dropdown - event listener on-change

$(document).ready(function () {
  console.log("ready!");
  $("select").on("change", function () {
    $.ajax({
      url: `/tolkien_character/${this.value}`,
      success: function (data) {
        // $('#data').text(data);
        // alert(data);
        $(".quoteByAuthor").text(data.text + " :" + data.character);
      },
      error: function () {
        alert("There was an error.");
      },
    });
  });
});

