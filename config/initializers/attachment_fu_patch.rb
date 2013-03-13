# require 'tempfile'
# Tempfile.class_eval do
#   def size
#     if @tmpfile
#       @tmpfile.fsync
#       @tmpfile.flush
#       @tmpfile.stat.size
#     else
#       0
#     end
#   end
# end