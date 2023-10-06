require "fiddle"

user32 = Fiddle.dlopen("user32.dll")
msgbox = Fiddle::Function.new(
  user32["MessageBoxA"],
  [Fiddle::TYPE_LONG, Fiddle::TYPE_VOIDP, Fiddle::TYPE_VOIDP, Fiddle::TYPE_INT],
  Fiddle::TYPE_INT
)
MB_OKCANCEL = 1
msgbox.call(0, "OK?", "Please Confirm", MB_OKCANCEL)
