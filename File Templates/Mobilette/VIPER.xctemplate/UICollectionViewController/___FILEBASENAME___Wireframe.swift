//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Mobilette template version 4.0
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
// ___COPYRIGHT___
//

import Foundation
import UIKit

class ___FILEBASENAMEASIDENTIFIER___Wireframe:
    Routable,
    StoryboardSegueDelegate
{
    // MARK: - Property

    var interfaceIdentifier: String = "___FILEBASENAMEASIDENTIFIER___ViewController"
    weak var viewController: UIViewController? = nil

    // MARK: - Storyboard segue

    private var preparedSegue: UIStoryboardSegue? = nil
    
    func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        self.preparedSegue = segue
    }
}

// MARK: -

extension ___FILEBASENAMEASIDENTIFIER___Wireframe: ___FILEBASENAMEASIDENTIFIER___WireframeInterface
{
    /*
    func present<# Interface name #>Interface()
    {
        guard let segue = self.preparedSegue else {
            fatalError("Segue is not set.")
        }
        guard let navigationViewController = segue.destination as? UINavigationController,
            let viewController = navigationViewController.viewControllers.first as? <# Interface name #>ViewController else {
                fatalError("Invalid navigation view controller from segue.")
        }
        let wireframe = ModuleFactory.<# Interface name #>()
        wireframe.presentInterface(fromSegue: segue)
    }
    */
}
