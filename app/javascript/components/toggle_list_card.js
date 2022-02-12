


const toggle_list_card = () => {

  const card = document.querySelector("#disp_card");
  const list = document.querySelector("#disp_list");
  const btSwitch = document.getElementById("btswitch");
  const img = document.getElementById('img-tgle-switch').attributes.src;

  if (btSwitch){
    btSwitch.addEventListener("click", (event) => {
      event.preventDefault();
      if (card.style.display === 'flex') {
        list.style.display = 'flex';
        card.style.display = 'none';

      } else {
        list.style.display = 'none';
        card.style.display = 'flex';
      };
    });
  };

};


// const toggle_list_card = bt_switch.addEventListener("click", (event) => {
//     event.preventDefault();
//     if (card.style.display === 'flex') {
//       list.style.display = 'flex';
//       card.style.display = 'none';
//     } else {
//       list.style.display = 'none';
//       card.style.display = 'flex';
//     };
// });


export { toggle_list_card };
