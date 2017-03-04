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
import Alamofire

public protocol RouterProtocol
{
    var method: Alamofire.HTTPMethod { get }
    var path: String { get }
    var baseURLString: String { get }
    var OAuthToken: String? { get }
}

extension RouterProtocol
{
    public var OAuthToken: String? {
        return nil
    }
    public var baseURLString: String {
        // FIXME: Use info.plist to use the base URL
        return ""
    }
}
