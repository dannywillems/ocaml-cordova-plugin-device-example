class type device =
  object
    method available : bool Js.t Js.readonly_prop
    (* smartphone platform *)
    method platform : Js.js_string Js.t Js.readonly_prop
    (* OS version *)
    method version : Js.js_string Js.t Js.readonly_prop
    (* smartphone uuid *)
    method uuid: Js.js_string Js.t Js.readonly_prop

    (* Cordova version *)
    method cordova : Js.js_string Js.t Js.readonly_prop

    (* Smartphone model *)
    method model : Js.js_string Js.t Js.readonly_prop

    (* If the application is running on a phone *)
    method isVirtual : bool Js.t Js.readonly_prop

    (* Manufacter *)
    method manufacter : Js.js_string Js.t Js.readonly_prop

    (* Serial *)
    method serial : Js.js_string Js.t Js.readonly_prop
  end

let device : device Js.t = Js.Unsafe.js_expr ("device")
