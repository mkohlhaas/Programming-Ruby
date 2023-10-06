require "tempfile"
tf = Tempfile.new("afile")
tf.path
tf.puts("Cosi Fan Tutte") # !sh!
tf.close # !sh!
tf.open # !sh!
tf.gets
tf.close(true) # !sh!
tf.unlink
