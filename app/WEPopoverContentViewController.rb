class WEPopoverContentViewController < UITableViewController

  def initWithStyle style
    super
    self.contentSizeForViewInPopover = CGSizeMake(100, 1 * 44 - 1)
    self
  end

  def viewDidLoad
    super
    self.tableView.rowHeight = 44.0
    self.view.backgroundColor = UIColor.clearColor
    # // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    # // self.navigationItem.rightBarButtonItem = self.editButtonItem;
  end

  def numberOfSectionsInTableView tableView
    # Return the number of sections.
    1
  end

  def tableView(tableView, numberOfRowsInSection: section)
    # Return the number of rows in the section.
    1
  end

  def tableView(tableView, cellForRowAtIndexPath: indexPath)
    cell = tableView.dequeueReusableCellWithIdentifier("Cell") || UITableViewCell.alloc.initWithStyle(UITableViewCellStyleDefault, reuseIdentifier:"Cell")
    cell.textLabel.text = "Item #{indexPath.row}"
    cell.textLabel.textColor = UIColor.whiteColor
    cell
  end

#pragma mark -
#pragma mark Table view delegate

  def tableView(tableView, didSelectRowAtIndexPath: indexPath)

  end
end