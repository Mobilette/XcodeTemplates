//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import Foundation

class ___FILEBASENAMEASIDENTIFIER___Presenter:
    ___FILEBASENAMEASIDENTIFIER___ModuleInterface,
    ___FILEBASENAMEASIDENTIFIER___InteractorOutput
{
	// MARK: - Property
    
    weak var view: ___FILEBASENAMEASIDENTIFIER___ViewInterface? = nil
    var interactor: ___FILEBASENAMEASIDENTIFIER___InteractorInput? = nil
    var wireframe: ___FILEBASENAMEASIDENTIFIER___Wireframe? = nil

    // MARK: - ___FILEBASENAMEASIDENTIFIER___ module interface

    func updateView()
    {
    	<# ... #>
    }
    
    // MARK: - ___FILEBASENAMEASIDENTIFIER___ interactor output interface

    // MARK: - Converting entities
}