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

class ___FILEBASENAMEASIDENTIFIER___NetworkPresenter:
    ___FILEBASENAMEASIDENTIFIER___NetworkModuleInterface,
    ___FILEBASENAMEASIDENTIFIER___InteractorNetworkOutput
{
    // MARK: - Property

    weak var interactor: ___FILEBASENAMEASIDENTIFIER___InteractorNetworkInput? = nil
    var networkController: ___FILEBASENAMEASIDENTIFIER___NetworkInterface? = nil
    
    // MARK: - ___FILEBASENAMEASIDENTIFIER___ network module interface
    
    // MARK: - ___FILEBASENAMEASIDENTIFIER___ interactor network output interface
    
    // MARK: - Convert raw datas
    
    // MARK: - Error
    
    enum ___FILEBASENAMEASIDENTIFIER___NetworkPresenterError: Error
    {
        case Mapping
    }
}
