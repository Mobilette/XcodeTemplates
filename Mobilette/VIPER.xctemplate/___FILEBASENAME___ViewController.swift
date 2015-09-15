//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Mobilette template version 1.0
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import Foundation
import UIKit

class ___FILEBASENAMEASIDENTIFIER___ViewController:
    UIViewController,
    ___FILEBASENAMEASIDENTIFIER___ViewInterface
{
	// MARK: - Property

    var presenter: ___FILEBASENAMEASIDENTIFIER___ModuleInterface? = nil

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
}
