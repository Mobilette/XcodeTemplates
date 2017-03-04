//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Mobilette template version 4.1
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
// ___COPYRIGHT___
//

import Foundation
import UIKit

class ___FILEBASENAMEASIDENTIFIER___Wireframe:
    Routable,
    SegueHandlerType
{
    // MARK: - Segue Identifier
    
    enum SegueIdentifier: String {
        case presentInterface1
        case presentInterface2
        case presentInterface3
    }
    
    // MARK: - Property
    
    var interfaceIdentifier: String = "___FILEBASENAMEASIDENTIFIER___ViewController"
    var storyboardName: String = "___FILEBASENAMEASIDENTIFIER___"
    weak var viewController: UIViewController? = nil
}

extension ___FILEBASENAMEASIDENTIFIER___Wireframe: StoryboardSegueDelegate
{
    func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        switch segueIdentifier(for: segue) {
        case .presentInterface1:
            print("presentInterface1")
        case .presentInterface2:
            print("presentInterface2")
        case .presentInterface3:
            print("presentInterface3")
        }
    }
    
    //    func present<# Interface name #>Interface()
    //    {
    //        guard let navigationViewController = segue.destination as? UINavigationController,
    //        let viewController = navigationViewController.viewControllers.first as? <# Interface name #>ViewController else {
    //            fatalError("Invalid navigation view controller from segue.")
    //        }
    //        let wireframe = ModuleFactory.<# Interface name #>()
    //        wireframe.presentInterface(fromSegue: segue)
    //    }
}

// MARK: -

extension ___FILEBASENAMEASIDENTIFIER___Wireframe: ___FILEBASENAMEASIDENTIFIER___WireframeInterface
{
    func presentInterface1()
    {
        self.performSegue(withIdentifier: .presentInterface1, sender: nil)
    }
    
    func presentInterface2()
    {
        self.performSegue(withIdentifier: .presentInterface2, sender: nil)
    }
    
    func presentInterface3()
    {
        self.performSegue(withIdentifier: .presentInterface3, sender: nil)
    }
}
