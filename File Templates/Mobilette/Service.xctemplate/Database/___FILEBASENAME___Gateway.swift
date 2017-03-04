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

final class ___FILEBASENAMEASIDENTIFIER___Gateway
{
    // MARK: - Type
    
    typealias RequestType = ___FILEBASENAMEASIDENTIFIER___DatabaseRequest
    typealias ResponseType = ___FILEBASENAMEASIDENTIFIER___DatabaseResponse
    
    // MARK: - Property
    
    var database: ___FILEBASENAMEASIDENTIFIER___DatabaseInterface
    
    // MARK: - Life cycle
    
    init(database: ___FILEBASENAMEASIDENTIFIER___DatabaseInterface)
    {
        self.database = database
    }
}

extension ___FILEBASENAMEASIDENTIFIER___Gateway: ___FILEBASENAMEASIDENTIFIER___GatewayInput
{

}
