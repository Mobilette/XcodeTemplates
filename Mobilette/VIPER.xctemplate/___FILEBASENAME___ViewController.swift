//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Mobilette template version 3.0
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import Foundation
import UIKit

class ___FILEBASENAMEASIDENTIFIER___ViewController:
    UIViewController,
    SegueHandlerType,
    ___FILEBASENAMEASIDENTIFIER___ViewInterface
{
    // MARK: - Segue Identifier
    
    enum SegueIdentifier: String {
        case presentInterface1
        case presentInterface2
        case presentInterface3
    }
    
	// MARK: - Property

    var presenter: ___FILEBASENAMEASIDENTIFIER___ViewModuleInterface? = nil

	// MARK: - Life cycle

    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.presenter?.updateView()
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Navigation delegate
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        switch segueIdentifierForSegue(segue) {
        case .presentInterface1:
            print("presentInterface1")
        case .presentInterface2:
            print("presentInterface2")
        case .presentInterface3:
            print("presentInterface3")
        }
    }
}
