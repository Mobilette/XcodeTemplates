//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  ACMS template version 2.0
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
// ___COPYRIGHT___
//

import Foundation
import UIKit

class ___FILEBASENAMEASIDENTIFIER___ViewController:
    UITableViewController
{
    // MARK: - Property
    
    var presenter: ___FILEBASENAMEASIDENTIFIER___ViewDelegate? = nil
    var storyboardSegueDelegate: StoryboardSegueDelegate? = nil
    
    fileprivate var items: [___FILEBASENAMEASIDENTIFIER___ViewItem] = []
    
    // MARK: - Life cycle
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.presenter?.viewDidLoad()
    }
    
    // MARK: - Navigation delegate
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        self.storyboardSegueDelegate?.prepare(for: segue, sender: sender)
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }
    
    override func tableView(
        _ tableView: UITableView,
        numberOfRowsInSection section: Int
        ) -> Int
    {
        return self.items.count
    }
    
    override func tableView(
        _ tableView: UITableView,
        cellForRowAt indexPath: IndexPath
        ) -> UITableViewCell
    {
        // FIXME: Incomplete implementation, the identifier must be set to storyboard/xib
        let identifier = "reuseIdentifier"
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)

        let item = self.items[indexPath.row]
        // FIXME: Incomplete implementation, use item to feed the custom cell
        
        return cell
    }
    
    // MARK: - Table view delegate
    
    func tableView(
        tableView: UITableView,
        didSelectRowAtIndexPath indexPath: NSIndexPath
        )
    {
        let item = self.items[indexPath.row]
        self.presenter?.didSelect(itemIdentifier: item.identifier)
    }
}

// MARK: -

extension ___FILEBASENAMEASIDENTIFIER___ViewController: ___FILEBASENAMEASIDENTIFIER___ViewInterface
{
    func set___FILEBASENAMEASIDENTIFIER___(_ items: [___FILEBASENAMEASIDENTIFIER___ViewItem])
    {
        self.items = items
        self.tableView.reloadData()
    }
}
