import $ from 'jquery';
import 'select2';

const initSelect2 = () => {
  $('.select2').select2({
    placeholder: "Filter by Category",
  }); // (~ document.querySelectorAll)
};

export { initSelect2 };