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
        let viewController = segue.destinationViewController as! ___FILEBASENAMEASIDENTIFIER___ViewController
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
        var presenter = <# Interface name #>Presenter()
        var interactor = <# Interface name #>Interactor()
        var wireframe = <# Interface name #>Wireframe()
        interactor.output = presenter
        presenter.interactor = interactor
        presenter.wireframe = wireframe
        wireframe.presenter = presenter
        if let segue = self.preparedSegue {
            MBLog.view(MBLog.Level.High, object: "Did prepare <# Interface name #> interface.")
            wireframe.prepareInterface(fromSegue: segue)
        }
        else {
            MBLog.error(MBLog.Level.High, object: "Did fail to prepare <# Interface name #> interface.")
        }
    }
    */
    
    // MARK: - Storyboard
    
    /*
    private func mainStoryboard() -> UIStoryboard
    {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle:NSBundle.mainBundle())
        return storyboard
    }
    */
    
    /*
    private func viewControllerFromStoryboard() -> ___FILEBASENAMEASIDENTIFIER___ViewController
    {
        let storyboard = self.mainStoryboard()
        let viewController = storyboard.instantiateViewControllerWithIdentifier(___FILEBASENAMEASIDENTIFIER___ViewControllerIdentifier) as! ___FILEBASENAMEASIDENTIFIER___ViewController
        return viewController
    }
    */
    
    /*
    private func navigationControllerFromStoryboard() -> UINavigationController
    {
        let storyboard = self.mainStoryboard()
        let navigationController = storyboard.instantiateViewControllerWithIdentifier(___FILEBASENAMEASIDENTIFIER___ViewControllerIdentifier) as! UINavigationController
        return navigationController
    }
    */
}
