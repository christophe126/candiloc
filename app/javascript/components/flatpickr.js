import flatpickr from "flatpickr";

//const initFlatpickr = () => {
// flatpickr("#start_date", {
//     altInput: true,
//     plugins: [new rangePlugin({ input: "#end_date"})]
// });


const initFlatpickr = () => {
    flatpickr(".datepicker", {});
};




export { initFlatpickr };

import rangePlugin from "flatpickr/dist/plugins/rangePlugin";