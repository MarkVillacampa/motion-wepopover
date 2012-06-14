class WEPopoverTableViewController < UITableViewController

  attr_accessor :popoverController

  def viewDidLoad
    super


    @barButtonItem = navigationItem.rightBarButtonItem = UIBarButtonItem.alloc.initWithTitle("Push", style:UIBarButtonItemStylePlain, target:self, action:"showPopover")
  
    # //Try setting this to UIPopoverController to use the iPad popover. The API is exactly the same!
    popoverClass = WEPopoverController.class

    # // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    # // self.navigationItem.rightBarButtonItem = self.editButtonItem;
  
    currentPopoverCellIndex = -1
  end

# // Override to allow orientations other than the default portrait orientation.
  def shouldAutorotateToInterfaceOrientation interfaceOrientation
    # // Return YES for supported orientations.
    # //return interfaceOrientation == UIInterfaceOrientationPortrait;
    true
  end


  def viewDidUnload
    # // Release any retained subviews of the main view.
    # // e.g. self.myOutlet = nil;
    self.popoverController.dismissPopoverAnimated false
    self.popoverController = nil
    super
  end

  #pragma mark -
  #pragma mark Table view data source

  def numberOfSectionsInTableView tableView
    # // Return the number of sections.
    1
  end


  def tableView(tableView, numberOfRowsInSection: section)
    # // Return the number of rows in the section.
    100
  end


  # // Customize the appearance of table view cells.
  def tableView(tableView, cellForRowAtIndexPath: indexPath)
  cell = tableView.dequeueReusableCellWithIdentifier("Cell") || UITableViewCell.alloc.initWithStyle(UITableViewCellStyleDefault, reuseIdentifier:"Cell")
    cell.textLabel.text = "Cell #{indexPath.row}"
    cell
  end

  #pragma mark -
  #pragma mark Table view delegate


  #pragma mark -
  #pragma mark Actions

  def showPopover
    if not self.popoverController
      contentViewController = WEPopoverContentViewController.alloc.initWithStyle UITableViewStylePlain

      self.popoverController = WEPopoverController.alloc.initWithContentViewController(contentViewController)
      self.popoverController.delegate = self
      self.popoverController.passthroughViews = [self.navigationController.navigationBar]
      self.popoverController.presentPopoverFromBarButtonItem(@barButtonItem,
                     permittedArrowDirections:(UIPopoverArrowDirectionUp),
                             animated: true)
      
    else
      self.popoverController.dismissPopoverAnimated(true)
      self.popoverController = nil
    end
  end
end