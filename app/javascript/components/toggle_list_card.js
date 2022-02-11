const card = document.querySelector("#disp_card");
const list = document.querySelector("#disp_list");
const bt_switch = document.getElementById("btswitch");

// toggle_list_card.addEventListener("click", (event) => {
//   event.preventDefault();
//   if (list.style.display = "none") {
//     list.style.display = "flex";
//     card.style.display = "none";
//   } else {
//     list.style.display = "none";
//     card.style.display = "flex";
//   };

// });



const toggle_list_card = bt_switch.addEventListener("click", (event) => {
    event.preventDefault();
    if (list.style.display = '') {
      list.style.display = '';
      card.style.display = 'none';
    } else {
      list.style.display = 'none';
      card.style.display = 'flex';
    };
});




export { toggle_list_card };
