//
//  Users+CoreDataProperties.swift
//  MovieTime
//
//  Created by Bipin Msb on 2022-08-05.
//
//

import Foundation
import CoreData


extension Users {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Users> {
        return NSFetchRequest<Users>(entityName: "Users")
    }

    @NSManaged public var id: Int16
    @NSManaged public var name: String?

}

extension Users : Identifiable {

}
