//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  ACMS template version 2.0
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
// ___COPYRIGHT___
//

import Foundation

class ModuleFactory
{
    // Use this template for rootViewController from Window
    /*
    static func <# Module Name #>() -> <# Module Name #>Wireframe
    {
        let interactor = <# Module Name #>Interactor()
        let wireframe = <# Module Name #>Wireframe()
        let presenter = <# Module Name #>Presenter()
        
        if let viewController = wireframe.viewControllerFromStoryboard() as? <# Module Name #>ViewController {
            interactor.presenter = presenter
            presenter.view = viewController
            presenter.interactor = interactor
            wireframe.viewController = viewController
            viewController.presenter = presenter
            viewController.wireframe = wireframe
        }
        return wireframe
    }
    */
    
    // Use this template when segue is performed
    /*
    static func <# Module Name #>(viewController: <# Module Name #>ViewController) -> <# Module Name #>Wireframe
    {
        let interactor = <# Module Name #>Interactor()
        let presenter = <# Module Name #>Presenter()
        let wireframe = <# Module Name #>Wireframe()
        
        interactor.presenter = presenter
        presenter.view = viewController
        presenter.interactor = interactor
        wireframe.viewController = viewController
        viewController.presenter = presenter
        viewController.wireframe = wireframe
        return wireframe
    }
    */
}
