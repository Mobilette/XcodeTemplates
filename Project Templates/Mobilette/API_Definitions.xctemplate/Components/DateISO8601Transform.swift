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
import ObjectMapper

open final class DateISO8601Transform: TransformType
{
    public typealias Object = Date
    public typealias JSON = String
    fileprivate static var dateFormat = "yyyy-MM-dd'T'HH:mm:ssZZZZZ"
    
     public init() {}
    
    open func transformFromJSON(_ value: Any?) -> Date?
    {
        if let time = value as? String {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = DateISO8601Transform.dateFormat
            return dateFormatter.date(from: time)
        }
        return nil
    }
    
    open func transformToJSON(_ value: Date?) -> JSON?
    {
        if let date = value {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = DateISO8601Transform.dateFormat
            return dateFormatter.string(from: date)
        }
        return nil
    }
}
