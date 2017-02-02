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

class ___FILEBASENAMEASIDENTIFIER___NetworkPresenter:
    ___FILEBASENAMEASIDENTIFIER___NetworkModuleInterface,
    ___FILEBASENAMEASIDENTIFIER___InteractorNetworkOutput
{
    // MARK: - Property

    weak var interactor: ___FILEBASENAMEASIDENTIFIER___InteractorNetworkInput? = nil
    var networkController: ___FILEBASENAMEASIDENTIFIER___NetworkInterface? = nil
    
    // MARK: - ___FILEBASENAMEASIDENTIFIER___ network module interface
    
    // MARK: - ___FILEBASENAMEASIDENTIFIER___ interactor network output interface
    
    // MARK: - Error
    
    enum ___FILEBASENAMEASIDENTIFIER___NetworkPresenter: Error
    {
        case Mapping
    }
}
