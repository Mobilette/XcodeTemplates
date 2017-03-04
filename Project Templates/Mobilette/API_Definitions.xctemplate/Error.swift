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

public enum APIError: Error
{
    case badURL
    case unauthorized
    case forbidden
    case notFound
    case internalError
    case timeout
}
