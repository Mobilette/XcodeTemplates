//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Mobilette template version 4.1
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
// ___COPYRIGHT___
//

import Foundation
import PromiseKit

public protocol AuthenticationNetworkDelegate: class
{
    
}

public protocol AuthenticationNetworkInterface: class
{
    func authenticate(_ parameters: [String: Any]) -> Promise<String>
    func cancelAuthentication() -> Promise<Void>
}
