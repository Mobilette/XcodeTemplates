//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Mobilette template version 4.1
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import Foundation
import PromiseKit

final class ___FILEBASENAMEASIDENTIFIER___Controller
{
    // MARK: - Type
    
    typealias RequestType = ___FILEBASENAMEASIDENTIFIER___NetworkRequest
    typealias ResponseType = ___FILEBASENAMEASIDENTIFIER___NetworkResponse
    
    // MARK: - Property
    
    var network: ___FILEBASENAMEASIDENTIFIER___NetworkInterface
    weak var output: ___FILEBASENAMEASIDENTIFIER___ControllerOutput? = nil
    
    // MARK: - Life cycle
    
    init(network: ___FILEBASENAMEASIDENTIFIER___NetworkInterface)
    {
        self.network = network
    }
}

extension ___FILEBASENAMEASIDENTIFIER___Controller: ___FILEBASENAMEASIDENTIFIER___ControllerInput
{

}

extension ___FILEBASENAMEASIDENTIFIER___Controller: ___FILEBASENAMEASIDENTIFIER___NetworkDelegate
{
    
}
