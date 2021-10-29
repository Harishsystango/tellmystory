// scroll to top
$(document).ready(function () {


  $('.js-example-basic-single').each(function () {
    $(this).select2({
      placeholder: $(this).attr("placeholder")
    });
  })


  // variables 
  var toTop = $('#scroll-top');
  // logic
  toTop.on('click', function () {
    $('html, body').animate({
      scrollTop: $('html, body').offset().top,
    });
  });
  jQuery("#translater-wrapper").show().appendTo(jQuery("#primary-menu-list"))





  var countryCodeList = data;
  $('.country-code').select2({
    placeholder: "Select an Option",
    minimumResultsForSearch: -1,
    data: countryCodeList,
  });

  $(".datepicker").daterangepicker({
    singleDatePicker: true, // Single calendar
    startDate: moment(),
    autoApply: true,
    minDate: moment(),
    drops: "auto",
    locale: {
      format: 'DD/MM/YYYY'
    },
  });

  $('input[name="dailyDatePicker"]').attr("placeholder", "Check In");


  var daily_city_from;
  var daily_vehicle;
  var daily_duration;
  var one_way_from;
  var one_way_to;
  var one_way_vehicle;
  var round_trip_from_new;
  var round_trip_to_new;
  var round_trip_vehicle_new;


  $('.daily-city').on('select2:select', function (e) {
    daily_city_from = e.params.data;
    console.log(daily_city_from.id)
  });
  $('.daily-city-Vehicle').on('select2:select', function (e) {
    daily_vehicle = e.params.data;
  });
  $('.daily-duration').on('select2:select', function (e) {
    daily_duration = e.params.data;
  });

  $('.on-way-from').on('select2:select', function (e) {
    one_way_from = e.params.data;
  });
  $('.on-way-to').on('select2:select', function (e) {
    one_way_to = e.params.data;
  });
  $('.one-way-Vehicle').on('select2:select', function (e) {
    one_way_vehicle = e.params.data;
  });

  $('.round-trip-from').on('select2:select', function (e) {
    round_trip_from_new = e.params.data;
  });
  $('.round-trip-to').on('select2:select', function (e) {
    round_trip_to_new = e.params.data;
  });
  $('.round-trip-Vehicle').on('select2:select', function (e) {
    round_trip_vehicle_new = e.params.data;
  });


  $('.daily-form').validate({
    rules: {
      daily_city_from: {
        required: true,
      },
      daily_city_vehicle: {
        required: true,
      },
      daily_city_date: {
        required: true,
      },
      daily_city_duration: {
        required: true,
      },
    },
    messages: {
      daily_city_from: {
        required: "Please select from location"
      },
      daily_city_vehicle: {
        required: "Please select vehicle"
      },
      daily_city_date: {
        required: "Please select date"
      },
      daily_city_duration: {
        required: "Please select from duration"
      },
    },
    submitHandler: function (form, e) {
      console.log(form, e)
      e.preventDefault();
      var form = $('.daily-form');
      var url = form.attr('action');
      var daily_city_date = $('[name="daily_city_date"]').val();
      var formData = {
        daily_form_name: "daily",
        location_from_id: daily_city_from.id,
        vehicle_type_id: daily_vehicle.id,
        pickup_date: daily_city_date,
        daily_duration: daily_duration,
      }
      var redirectionURL = apilink + 'en/search/vehicle';
      redirectionURL = redirectionURL + '?location_from_id=' + formData.location_from_id + '&location_to_id=' + '&booking_type=' + formData.daily_form_name + '&pickup_date=' + formData.pickup_date + '&daily_duration=' + daily_duration.id + '&vehicle_type_id=' + formData.vehicle_type_id;
      //sessionStorage.setItem("from-data", JSON.stringify(formData));
      console.log({ redirectionURL, url });
      // $.ajax({
      //   type: "GET",
      //   url: url,
      //   data: redirectionURL,
      //   success: function (data) {
      //     window.location.href = redirectionURL;
      //   }
      // });


    }
  });

  $('.one-way-form').validate({
    rules: {
      one_way_from: {
        required: true,
      },
      one_way_to: {
        required: true,
      },
      one_way_vehicle: {
        required: true,
      },
      one_way_date: {
        required: true,
      },
    },
    messages: {
      one_way_from: {
        required: "Please select from location"
      },
      one_way_to: {
        required: "Please select to location"
      },
      one_way_vehicle: {
        required: "Please select vehicle"
      },
      one_way_date: {
        required: "Please select date"
      },
    },
    submitHandler: function (form) {
      var form = $('.one-way-form');
      var url = form.attr('action');
      var one_way_date = $('[name="one_way_date"]').val();
      var formData = {
        booking_type: "one_way",
        location_from_id: one_way_from.id,
        location_to_id: one_way_to.id,
        vehicle_type_id: one_way_vehicle.id,
        pickup_date: one_way_date,
      }

      var redirectionURL2 = apilink + 'en/search/vehicle';
      redirectionURL2 = redirectionURL2 + '?location_from_id=' + formData.location_from_id + '&location_to_id=' + formData.location_to_id + '&booking_type=' + formData.booking_type + '&pickup_date=' + formData.pickup_date + '&vehicle_type_id=' + formData.vehicle_type_id;
      $.ajax({
        type: "GET",
        url: url,
        data: redirectionURL2,
        success: function (data) {
          window.location.href = redirectionURL2;
        }
      });
    }
  });

  $('.round-trip-form').validate({
    rules: {
      round_trip_from: {
        required: true,
      },
      round_trip_to: {
        required: true,
      },
      round_trip_vehicle: {
        required: true,
      },
      round_trip_pick_date: {
        required: true,
      },
      round_trip_drop_date: {
        required: true,
      },
    },
    messages: {
      round_trip_from: {
        required: "Please select from location"
      },
      round_trip_to: {
        required: "Please select to location"
      },
      round_trip_vehicle: {
        required: "Please select vehicle"
      },
      round_trip_pick_date: {
        required: "Please select pickup date"
      },
      round_trip_drop_date: {
        required: "Please select dropoff date"
      },
    },
    submitHandler: function (form) {
      var form = $('.round-trip-form');
      var url = form.attr('action');
      var round_trip_pick_date = $('[name="round_trip_pick_date"]').val();
      var round_trip_drop_date = $('[name="round_trip_drop_date"]').val();
      var formData = {
        booking_type: 'round_trip',
        location_from_id: round_trip_from_new.id,
        location_to_id: round_trip_to_new.id,
        vehicle_type_id: round_trip_vehicle_new.id,
        pickup_date: round_trip_pick_date,
        dropoff_date: round_trip_drop_date,
      }
      var redirectionURL3 = apilink + 'en/search/vehicle';
      redirectionURL3 = redirectionURL3 + '?location_from_id=' + formData.location_from_id + '&location_to_id=' + formData.location_to_id + '&booking_type=' + formData.booking_type + '&pickup_date=' + formData.pickup_date + '&dropoff_date=' + formData.dropoff_date + '&vehicle_type_id=' + formData.vehicle_type_id;
      // sessionStorage.setItem("from-data", JSON.stringify(formData));
      $.ajax({
        type: "GET",
        url: redirectionURL3,
        data: formData,
        success: function (data) {
          window.location.href = redirectionURL3;
        }
      });
    }
  });



});

// scroll to top end