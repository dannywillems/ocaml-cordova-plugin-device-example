let on_device_ready _ =
  let d = Cordova_device.t () in
  let text =
    "platform: " ^
    d#platform ^
    "\nversion: " ^
    d#version ^
    "\nuuid: " ^
    d#uuid ^
    "\ncordova version: " ^
    d#cordova ^
    "\nmodel version: " ^
    d#model ^
    "\nmanufacturer: " ^
    d#manufacturer ^
    "\nserial: " ^
    d#serial
  in
  Jsoo_lib.alert text

let _ =
  Cordova.Event.device_ready on_device_ready;
  Cordova.Event.add_event_listener Cordova.Event.Vol_up_button on_device_ready
  false
