require "stringio"

sio = StringIO.new("time flies like an arrow")
sio.read(5)
sio.read(5)
sio.pos = 19
sio.read(5)
sio.rewind
sio.write("fruit")
sio.pos = 16
sio.write("a banana")
sio.rewind
sio.read
