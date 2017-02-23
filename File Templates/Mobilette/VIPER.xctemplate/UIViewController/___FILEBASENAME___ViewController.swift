//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Mobilette template version 2.0
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
// ___COPYRIGHT___
//

import Foundation
import UIKit

class ___FILEBASENAMEASIDENTIFIER___ViewController:
    UIViewController,
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
        self.storyboardSegueDelegate?.prepare(for: segue, sender: sender)
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
}

// MARK: -

extension ___FILEBASENAMEASIDENTIFIER___ViewController: ___FILEBASENAMEASIDENTIFIER___ViewInterface
{
    
}
