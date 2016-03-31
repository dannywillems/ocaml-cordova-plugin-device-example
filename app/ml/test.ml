let on_device_ready _ =
  let d = Device.t () in
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
  Dom_html.window##alert (Js.string text);
  Js._false

let _ =
  Dom.addEventListener Dom_html.document (Dom.Event.make "deviceready")
(Dom_html.handler on_device_ready) Js._false
