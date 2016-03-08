let on_device_ready _ =
  let d : Device.device Js.t = Js.Unsafe.js_expr ("device") in
  let text =
    "platform: " ^
    (Js.to_string d##.platform) ^
    "\nversion: " ^
    (Js.to_string d##.version) ^
    "\nuuid: " ^
    (Js.to_string d##.uuid) ^
    "\ncordova version: " ^
    (Js.to_string d##.cordova) ^
    "\nmodel version: " ^
    (Js.to_string d##.model) ^
    "\nmanufacturer: " ^
    (Js.to_string d##.manufacturer) ^
    "\nserial: " ^
    (Js.to_string d##.serial)
  in
  Dom_html.window##alert (Js.string text);
  Js._false

let _ =
  Dom.addEventListener Dom_html.document (Dom.Event.make "deviceready")
(Dom_html.handler on_device_ready) Js._false
