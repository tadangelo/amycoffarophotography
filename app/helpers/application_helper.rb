module ApplicationHelper
	def copyright_generator
    DangeloViewTool::Renderer.copyright "Amy Coffaro Photography", 'All rights reserved.' 
  end
end
