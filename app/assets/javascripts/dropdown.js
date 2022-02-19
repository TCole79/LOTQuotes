
// this commented out code creates an event listener attached to the dropdown menu choice, and makes an API call based on that choice
$(document).ready(function () {
  console.log("ready!");
  // $("select").on("change", function () {
  //   $.ajax({
  //     url: `/tolkien_character/${this.value}`,
  //     success: function (data) {
  //       // $('#data').text(data);
  //       // alert(data);
  //       $(".quoteByAuthor").text(data.text + " ~ " + data.character);
  //     },
  //     error: function () {
  //       alert("There was an error.");
  //     },
  //   });
  // });
  
  // this code takes the value of the dropdown above, and links it to the 'fetch-specific-quote' button so you can make more API calls to the API for the character choice but without selecting the dropdown over and over
  $(".fetch-specific-quote").on("click", (event) => {
    event.preventDefault();
    const selectedOption = $("select option:selected").val();
    $.ajax({
      url: `/tolkien_character/${selectedOption}`,
      success: function (data) {
        $(".quoteByAuthor").text(data.text + " ~ " + data.character);
      },
      error: function () {
        alert("There was an error.");
      },
    });
  });
});
