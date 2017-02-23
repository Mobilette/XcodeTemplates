//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Mobilette template version 4.0
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
// ___COPYRIGHT___
//

import Foundation
import Alamofire

protocol RouterProtocol
{
    var method: Alamofire.HTTPMethod { get }
    var path: String { get }
    var baseURLString: String { get }
    var OAuthToken: String? { get }
}

extension RouterProtocol
{
    var OAuthToken: String? {
        return nil
    }
    var baseURLString: String {
        // FIXME: Use info.plist to use the base URL
        return ""
    }
}
