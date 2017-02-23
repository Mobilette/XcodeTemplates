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

protocol Routable: class
{
    var interfaceIdentifier: String { get }
    weak var viewController: UIViewController? { get set }
    var storyboardName: String { get }
    
    func presentInterface(fromWindow window: UIWindow)
    func presentInterface(fromSegue segue: UIStoryboardSegue)
    
    func storyboard() -> UIStoryboard
    func viewControllerFromStoryboard() -> UIViewController
    func navigationControllerFromStoryboard() -> UINavigationController?
}

extension Routable
{
    var storyboardName: String { return "Main" }
    
    func storyboard() -> UIStoryboard
    {
        let storyboard: UIStoryboard = UIStoryboard(name: storyboardName, bundle: Bundle.main)
        return storyboard
    }
    
    func viewControllerFromStoryboard() -> UIViewController
    {
        let storyboard = self.storyboard()
        let viewController = storyboard.instantiateViewController(withIdentifier: interfaceIdentifier)
        return viewController
    }
    
    func navigationControllerFromStoryboard() -> UINavigationController?
    {
        let storyboard = self.storyboard()
        let navigationController = storyboard.instantiateViewController(withIdentifier: interfaceIdentifier) as? UINavigationController
        return navigationController
    }
    
    func presentInterface(fromWindow window: UIWindow)
    {
        window.rootViewController = self.viewController
    }
    
    func presentInterface(fromSegue segue: UIStoryboardSegue)
    {
        // TODO: Use custom segue.perform() to display destination view controller with specific animation
    }
}
