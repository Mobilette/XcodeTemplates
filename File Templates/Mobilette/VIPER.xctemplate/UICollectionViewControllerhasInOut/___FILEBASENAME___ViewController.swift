//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Mobilette template version 4.0
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import Foundation
import UIKit

class ___FILEBASENAMEASIDENTIFIER___ViewController:
    UICollectionViewController,
    SegueHandlerType
{
    // MARK: - Segue Identifier
    
    
    enum SegueIdentifier: String {
        case presentInterface1
        case presentInterface2
        case presentInterface3
    }
    
	// MARK: - Property

    var presenter: ___FILEBASENAMEASIDENTIFIER___ViewDelegate? = nil
    var wireframe: (___FILEBASENAMEASIDENTIFIER___WireframeInterface & StoryboardSegueDelegate)? = nil
    
    fileprivate var items: [___FILEBASENAMEASIDENTIFIER___ViewItem] = []

	// MARK: - Life cycle

    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.presenter?.viewDidLoad()
    }
    
    // MARK: - Navigation delegate
    
    /*
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        self.wireframe?.prepare(for: segue, sender: sender)
        switch segueIdentifier(for: segue) {
        case .presentInterface1:
            print("presentInterface1")
        case .presentInterface2:
            print("presentInterface2")
        case .presentInterface3:
            print("presentInterface3")
        }
    }
    */
    
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
