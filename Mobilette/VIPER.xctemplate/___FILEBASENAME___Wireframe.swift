//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Mobilette template version 2.0
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import Foundation
import UIKit

let ___FILEBASENAMEASIDENTIFIER___ViewControllerIdentifier: String = "___FILEBASENAMEASIDENTIFIER___ViewController"

class ___FILEBASENAMEASIDENTIFIER___Wireframe//: StoryboardSegueDelegate
{
    // MARK: - Property

    weak var presenter: ___FILEBASENAMEASIDENTIFIER___ViewPresenter? = nil
    private weak var viewController: ___FILEBASENAMEASIDENTIFIER___ViewController? = nil

    // MARK: - Storyboard segue

    /*    
    enum SegueIdentifier: String {
        case PushTo<# Next interface name #> = "push___FILEBASENAMEASIDENTIFIER___To<# Next interface name #>"
    }
    */

    private var preparedSegue: UIStoryboardSegue? = nil

    // MARK: - Presentation

    func prepareInterface(fromSegue segue: UIStoryboardSegue)
    {
        let viewController = segue.destination as! ___FILEBASENAMEASIDENTIFIER___ViewController
        viewController.presenter = self.presenter
        self.viewController = viewController
        self.presenter?.view = viewController
    }

    /*
    func prepareInterface(fromSegue segue: UIStoryboardSegue)
    {
        let navigationViewController = segue.destinationViewController as! UINavigationController
        if let viewController = navigationViewController.viewControllers.first as? ___FILEBASENAMEASIDENTIFIER___ViewController {
            viewController.presenter = self.presenter
            self.viewController = viewController
            self.presenter?.view = viewController
        }
    }
    */

    /*
    func presentInterface(fromWindow window: UIWindow)
    {
    	/*
        let viewController = self.viewControllerFromStoryboard()
        */

    	/*
        let navigationViewController = self.navigationControllerFromStoryboard()
        if let viewController = navigationViewController.viewControllers.first as? ___FILEBASENAMEASIDENTIFIER___ViewController
        */

        viewController.presenter = self.presenter
        self.viewController = viewController
        self.presenter?.view = viewController
    }
    */

    // MARK: - Prepare interface

    /*
    func prepare<# Interface name #>Interface()
    {
//        let networkPresenter = <# Interface name #>NetworkPresenter()
//        let networkController = <# Interface name #>NetworkController()
//        networkPresenter.networkController = networkController
//        networkController.presenter = networkPresenter
     
        let viewPresenter = <# Interface name #>ViewPresenter()
     
        let interactor = <# Interface name #>Interactor()
        interactor.view = viewPresenter
        viewPresenter.interactor = interactor
//        interactor.network = networkPresenter
//        networkPresenter.interactor = interactor
     
        let wireframe = <# Interface name #>Wireframe()
        wireframe.presenter = presenter
        viewPresenter.wireframe = wireframe

        if let segue = self.preparedSegue {
            wireframe.prepareInterface(fromSegue: segue)
        }
        else {
            // Log error
        }
    }
    */
    
    // MARK: - Storyboard
    
    /*
    private func mainStoryboard() -> UIStoryboard
    {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        return storyboard
    }
    */
    
    /*
    private func viewControllerFromStoryboard() -> ___FILEBASENAMEASIDENTIFIER___ViewController
    {
        let storyboard = self.mainStoryboard()
        let viewController = storyboard.storyboard.instantiateViewController(withIdentifier: ___FILEBASENAMEASIDENTIFIER___ViewControllerIdentifier) as! ___FILEBASENAMEASIDENTIFIER___ViewController
        return viewController
    }
    */
    
    /*
    private func navigationControllerFromStoryboard() -> UINavigationController
    {
        let storyboard = self.mainStoryboard()
        let navigationController = storyboard.instantiateViewController(withIdentifier: ___FILEBASENAMEASIDENTIFIER___ViewControllerIdentifier) as! UINavigationController
        return navigationController
    }
    */
}
