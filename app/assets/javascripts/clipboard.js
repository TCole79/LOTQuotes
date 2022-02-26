// this code for the main page copy button
const copyToClipboard = function () {
  const copyText = document.querySelector(".quote");
  navigator.clipboard.writeText(copyText.innerText).then(() => {
    // Alert the user that the action took place via a toast
    $("#toasty").toast("show");
    setTimeout(() => {
      $("#toasty").toast("hide");
    }, 3500);
  });
};
