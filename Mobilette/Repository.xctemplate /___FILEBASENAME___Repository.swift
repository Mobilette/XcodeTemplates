//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import Foundation

class ___FILEBASENAMEASIDENTIFIER___Repository:
    Equatable,
    CustomStringConvertible
{
    // MARK: - Property
    
    private var <# property name #>s: [___FILEBASENAMEASIDENTIFIER___] = []
    
    // MARK: - Collection
    
    func add___FILEBASENAMEASIDENTIFIER___(<# property name #>: ___FILEBASENAMEASIDENTIFIER___)
    {
        if self.shouldAdd___FILEBASENAMEASIDENTIFIER___(<# property name #>) {
            self.<# property name #>s.append(<# property name #>)
        }
    }
    
    func add___FILEBASENAMEASIDENTIFIER___s(<# property name #>s: [___FILEBASENAMEASIDENTIFIER___])
    {
        for <# property name #> in <# property name #>s {
            self.add___FILEBASENAMEASIDENTIFIER___(<# property name #>)
        }
    }

    func shouldAdd___FILEBASENAMEASIDENTIFIER___(<# property name #>: ___FILEBASENAMEASIDENTIFIER___) -> Bool
    {
        return self.<# property name #>s.contains(<# property name #>)
    }
    
    func update___FILEBASENAMEASIDENTIFIER___(<# property name #>: ___FILEBASENAMEASIDENTIFIER___)
    {
        if let index = self.<# property name #>s.indexOf({ $0.identifier == <# property name #>.identifier }) {
            self.<# property name #>s[index] = <# property name #>
        }
    }
    
    func remove___FILEBASENAMEASIDENTIFIER___(identifer id: String)
    {
        self.<# property name #>s = self.<# property name #>s.filter {
            return $0.identifier != id
        }
    }

    func remove___FILEBASENAMEASIDENTIFIER___(<# property name #>: ___FILEBASENAMEASIDENTIFIER___)
    {
        self.<# property name #>s = self.<# property name #>s.filter {
            return $0.identifier != <# property name #>.identifier
        }
    }

    func remove___FILEBASENAMEASIDENTIFIER___(<# property name #>s: [___FILEBASENAMEASIDENTIFIER___])
    {
        self.<# property name #>s = self.<# property name #>s.filter {
            for <# property name #> in <# property name #>s {
                if $0.identifier != <# property name #>.identifier {
                    return true
                }
            }
            return false
        }
    }
    
    func removeAll___FILEBASENAMEASIDENTIFIER___s()
    {
        self.<# property name #>s = []
    }
    
    // MARK: - Printable protocol
    
    var description: String {
        return "{ ___FILEBASENAMEASIDENTIFIER___Repository" + "\n"
            + "<# property name #>s: \(self.<# property name #>s)" + "\n"
            + "}" + "\n"
    }
}

// MARK: - Equatable protocol

func ==(lhs: ___FILEBASENAMEASIDENTIFIER___Repository, rhs: ___FILEBASENAMEASIDENTIFIER___Repository) -> Bool {
    return lhs.<# property name #>s == rhs.<# property name #>s
}