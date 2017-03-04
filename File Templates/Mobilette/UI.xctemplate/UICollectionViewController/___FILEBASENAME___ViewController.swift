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
    UICollectionViewController
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
    
    // MARK: - Collection view data source
    
    override func collectionView(
        _ collectionView: UICollectionView,
        numberOfItemsInSection section: Int
        ) -> Int
    {
        return self.items.count
    }
    
    override func collectionView(
        _ collectionView: UICollectionView,
        cellForItemAt indexPath: IndexPath
        ) -> UICollectionViewCell
    {
        // FIXME: Incomplete implementation, the identifier must be set to storyboard/xib
        let identifier = "reuseIdentifier"

        // get a reference to our storyboard cell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath)
        
        let item = self.items[indexPath.item]
        // FIXME: Incomplete implementation, use item to feed the custom cell
        
        return cell
    }
    
    // MARK: - Collection view delegate
    
    override func collectionView(
        _ collectionView: UICollectionView,
        didSelectItemAt indexPath: IndexPath
        )
    {
        let item = self.items[indexPath.item]
        self.presenter?.didSelect(itemIdentifier: item.identifier)
    }
}

// MARK: -

extension ___FILEBASENAMEASIDENTIFIER___ViewController: ___FILEBASENAMEASIDENTIFIER___ViewInterface
{
    func set___FILEBASENAMEASIDENTIFIER___(_ items: [___FILEBASENAMEASIDENTIFIER___ViewItem])
    {
        self.items = items
        self.collectionView?.reloadData()
    }
}
