let postButton = function () {
  $.ajax({
    url: "/quotes/generate_quote",
    type: "POST",
  });
};
