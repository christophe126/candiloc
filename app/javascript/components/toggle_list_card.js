


const toggle_list_card = () => {

  const card = document.querySelector("#disp_card");
  const list = document.querySelector("#disp_list");
  const btSwitch = document.getElementById("btswitch");
  const img = document.getElementById('img-tgle-switch');

  if (btSwitch){
    btSwitch.addEventListener("click", (event) => {
      event.preventDefault();
      if (card.style.display === 'flex') {
        list.style.display = 'flex';
        card.style.display = 'none';
        img.attributes.src.value = '/assets/toggleCard-d527ec8e4fda89a1b4b6444ba9b7830a3dbfb84c1586502e5f68387ce81adc2c.png';

      } else {
        list.style.display = 'none';
        card.style.display = 'flex';
        img.attributes.src.value = '/assets/toggleList-9c8d442c3f016a96fb08e626b43cec95c20eca863e41502b8628635caf8ef42b.png'
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
