# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project'

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'motion-popover'

  app.vendor_project( "vendor/WEPopover-lib", :xcode,
  :xcodeproj => "WEPopover-lib.xcodeproj", :target => "WEPopover-lib", :products => ["libWEPopover-lib.a"],
  :headers_dir => "WEPopover-lib")
end
