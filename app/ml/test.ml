let on_device_ready _ =
  let text =
    "platform: " ^
    (Js.to_string Device.device##.platform) ^
    "\nversion: " ^
    (Js.to_string Device.device##.version) ^
    "\nuuid: " ^
    (Js.to_string Device.device##.uuid) ^
    "\ncordova version: " ^
    (Js.to_string Device.device##.cordova) ^
    "\nmodel version: " ^
    (Js.to_string Device.device##.model) ^
    "\nmanufacter: " ^
    (Js.to_string Device.device##.manufacter) ^
    "\nserial: " ^
    (Js.to_string Device.device##.serial) in
  Dom_html.window##alert (Js.string text);
  Js._true

let _ =
  Dom.addEventListener Dom_html.document (Dom.Event.make "deviceready")
(Dom_html.handler on_device_ready) Js._false
