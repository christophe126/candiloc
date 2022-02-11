import "jquery-bar-rating";
import $ from 'jquery';

const initStarRating = () => {
  $('#review_rating').barrating({
    theme: 'css-stars'
  });
};

// const initStarRating = () => {

//   $('#review_rating').each(function (Index, el) {
//     var $El = $(el);
//     $El.barrating({
//       theme: 'fontawesome-stars-o',
//       allowEmpty: true,
//       initialRating: $El.attr('data-current-rating'),
//       readonly: true
//     });
//   });

// };


export { initStarRating };
