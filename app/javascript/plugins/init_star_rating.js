import "jquery-bar-rating";
import $ from 'jquery';

const initStarRating = () => {
  $('#review_stars').barrating({
    theme: 'css-stars'
  });
};

export { initStarRating };