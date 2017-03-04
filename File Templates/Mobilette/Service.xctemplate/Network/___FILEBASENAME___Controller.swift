//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  ACMS template version 2.0
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import Foundation
import PromiseKit

final class ___FILEBASENAMEASIDENTIFIER___Controller: Controllable
{
    // MARK: - Type
    
    typealias RequestType = ___FILEBASENAMEASIDENTIFIER___NetworkRequest
    typealias ResponseType = ___FILEBASENAMEASIDENTIFIER___NetworkResponse
    
    // MARK: - Property
    
    var network: ___FILEBASENAMEASIDENTIFIER___NetworkInterface
    
    // MARK: - Life cycle
    
    init(network: ___FILEBASENAMEASIDENTIFIER___NetworkInterface)
    {
        self.network = network
    }
}

extension ___FILEBASENAMEASIDENTIFIER___Controller: ___FILEBASENAMEASIDENTIFIER___ControllerInput
{

}
