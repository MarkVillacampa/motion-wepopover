class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds) 

    @viewcontroller = WEPopoverTableViewController.new
    @viewcontroller.title = "Motion-WEPopover"

    @navigationcontroller = UINavigationController.alloc.initWithRootViewController @viewcontroller

    @window.rootViewController = @navigationcontroller
    @window.backgroundColor = UIColor.whiteColor
    @window.makeKeyAndVisible
    true
  end
end