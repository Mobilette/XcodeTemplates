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

final class ___FILEBASENAMEASIDENTIFIER___Presenter
{
	// MARK: - Property
    
    weak var view: ___FILEBASENAMEASIDENTIFIER___ViewInterface? = nil
    var interactor: ___FILEBASENAMEASIDENTIFIER___Input
    var wireframe: ___FILEBASENAMEASIDENTIFIER___WireframeInterface
    
    // MARK: - Life cycle
    
    init(interactor: ___FILEBASENAMEASIDENTIFIER___Input,
         wireframe: ___FILEBASENAMEASIDENTIFIER___WireframeInterface)
    {
        self.interactor = interactor
        self.wireframe = wireframe
    }

    // MARK: - Converting entities

}

// MARK: -

extension ___FILEBASENAMEASIDENTIFIER___Presenter: ___FILEBASENAMEASIDENTIFIER___ViewDelegate
{
    func viewDidLoad()
    {
        // FIXME: Incomplete implementation, call the interactor to delegate the responsibility of business rules
    }
    
    func didSelect(itemIdentifier: String)
    {
        // FIXME: Incomplete implementation, call the interactor to delegate the responsibility of business rules or the wireframe to delegate the responsibility of navigation
    }
}

extension ___FILEBASENAMEASIDENTIFIER___Presenter: ___FILEBASENAMEASIDENTIFIER___Output
{
    
}
