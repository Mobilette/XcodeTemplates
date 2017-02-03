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

let ___FILEBASENAMEASIDENTIFIER___ViewControllerIdentifier: String = "___FILEBASENAMEASIDENTIFIER___ViewController"

class ___FILEBASENAMEASIDENTIFIER___Wireframe:
    ModuleWireframeInterface,
    StoryboardSegueDelegate
{
    // MARK: - Property

    weak var presenter: ___FILEBASENAMEASIDENTIFIER___ViewPresenter? = nil
    private weak var viewController: ___FILEBASENAMEASIDENTIFIER___ViewController? = nil

    // MARK: - Storyboard segue

    private var preparedSegue: UIStoryboardSegue? = nil
    
    func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        self.preparedSegue = segue
    }

    // MARK: - Prepare Interface
    
    func prepareInterface(fromViewController viewController: UIViewController)
    {
        guard let viewController = viewController as? ___FILEBASENAMEASIDENTIFIER___ViewController else {
            abort()
        }
        viewController.presenter = self.presenter
        viewController.storyboardSegueDelegate = self
        self.viewController = viewController
        self.presenter?.view = viewController
    }

    // MARK: - Present External Interface

    /*
    func present<# Interface name #>Interface()
    {
        guard let segue = self.preparedSegue else {
            abort()
        }
        let presenter = ModuleFactory.<# Interface name #>Module()
        presenter.wireframe?.presentInterface(fromSegue: segue)
    }
    */
}
