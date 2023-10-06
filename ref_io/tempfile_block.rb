require "tempfile"
Tempfile.create("afile") do |tf|
  tf.path
  tf.puts("Cosi Fan Tutte") # !sh!
  tf.gets
end
