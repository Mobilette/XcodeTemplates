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
    
    enum Error: MBError
    {
        case Mapping(String)
        
        var code: Int {
            switch self {
            case .Mapping:
                return 500
            }
        }
        
        var domain: String {
            return "___FILEBASENAMEASIDENTIFIER___NetworkControllerDomain"
        }
        
        var description: String {
            switch self {
            case .Mapping:
                return "Mapping Error."
            }
        }
        
        var reason: String {
            switch self {
            case .Mapping(let JSONString):
                return "Response string can not be mapped to the object.\nString: \(JSONString)."
            }
        }
    }
}