import flatpickr from 'flatpickr';
import 'flatpickr/dist/themes/airbnb.css'
import rangePlugin from "flatpickr/dist/plugins/rangePlugins"

flatpickr("#start_date", {
  altInput: true,
  "plugins": [new rangePlugins[{ input: "#end_date"}]]
});
