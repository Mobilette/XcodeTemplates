//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Mobilette template version 3.1
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import Foundation
import UIKit

class ___FILEBASENAMEASIDENTIFIER___Wireframe:
    Routable
{
    // MARK: - Property

    var interfaceIdentifier: String = "___FILEBASENAMEASIDENTIFIER___ViewController"
    weak var presenter: ___FILEBASENAMEASIDENTIFIER___ViewModuleInterface? = nil
    weak var viewController: ___FILEBASENAMEASIDENTIFIER___ViewController? = nil

    // MARK: - Storyboard segue

    private var preparedSegue: UIStoryboardSegue? = nil
    
    func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        self.preparedSegue = segue
    }

    // MARK: - Present External Interface

    /*
    func present<# Interface name #>Interface()
    {
        guard let segue = self.preparedSegue else {
            fatalError("Segue is not set.")
        }
        let presenter = ModuleFactory.<# Interface name #>Module()
        presenter.wireframe?.presentInterface(fromSegue: segue)
    }
    */
}
