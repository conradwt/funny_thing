class ForumsController < ApplicationController
  include ForumsControllerModule
  
  append_view_path(File.dirname(__FILE__) + "/../../../../lib/views")
end
