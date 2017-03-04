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
import PromiseKit

public protocol Authenticable: Requestable, AuthenticationNetworkInterface
{
    
}

extension Authenticable
{
    public func authenticate(_ parameters: [String: Any]) -> Promise<String>
    {
        let router = LoginRouter.Authenticate(parameters)
        return Self.send(router)
    }
    
    public func cancelAuthentication() -> Promise<Void>
    {
        let router = LoginRouter.Authenticate([:])
        return Self.cancel(router)
    }
}
