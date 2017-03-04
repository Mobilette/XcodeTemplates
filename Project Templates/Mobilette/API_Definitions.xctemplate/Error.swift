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

public enum APIError: Error
{
    case badURL
    case unauthorized
    case forbidden
    case notFound
    case internalError
    case timeout
}
