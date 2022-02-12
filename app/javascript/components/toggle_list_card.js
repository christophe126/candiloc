const card = document.querySelector("#disp_card");
const list = document.querySelector("#disp_list");
const bt_switch = document.getElementById("btswitch");


const toggle_list_card = bt_switch.addEventListener("click", (event) => {
    event.preventDefault();
    if (card.style.display === 'flex') {
      list.style.display = 'flex';
      card.style.display = 'none';
    } else {
      list.style.display = 'none';
      card.style.display = 'flex';
    };
});


export { toggle_list_card };
