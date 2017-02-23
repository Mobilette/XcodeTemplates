//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Mobilette template version 2.0
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
// ___COPYRIGHT___
//

import Foundation
import PromiseKit

protocol UserAuthenticable
{
    static func authenticate(email: String, password: String) -> Promise<String>
    static func cancelAuthentication() -> Promise<Void>
}

extension UserAuthenticable
{
    static func authenticate(email: String, password: String) -> Promise<String>
    {
        let router = UserRouter.Authenticate(email, password)
        return Request.send(router)
    }
    
    static func cancelAuthentication() -> Promise<Void>
    {
        let router = UserRouter.Authenticate("", "")
        return Request.cancel(router)
    }
}
