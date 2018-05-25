import $ from 'jquery'
import { datepicker } from 'bootstrap-datepicker'

// $('#from').datepicker({
// });

// $('#to').datepicker({
// });
$('.input-daterange').datepicker({})
.on('changeDate', (e) => {
  const startDateString = document.getElementById('start-datepicker').value
  const endDateString = document.getElementById('end-datepicker').value
  const startDate = new Date(startDateString)
  const endDate = new Date(endDateString)
  const numberOfDays = (endDate - startDate) / (1000*60*60*24)
  const bookingDays = document.querySelector('[data-id="duration"]')
  bookingDays.innerText = numberOfDays
  const pricePerNight = parseInt(document.querySelector('[data-id="averageRental"]').innerText)
  console.log(pricePerNight)
  const totalPrice = document.querySelector('[data-price-rowtotal="rnt"]')
  totalPrice.innerText = pricePerNight * numberOfDays
  document.getElementById('cost-params').value = pricePerNight * numberOfDays
  const totalPriceWithGst = document.querySelector('[data-price-rowtotal="total"]')
  totalPriceWithGst.innerText = pricePerNight * numberOfDays * 1.2

});