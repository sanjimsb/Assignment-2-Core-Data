//
//  Movies+CoreDataProperties.swift
//  MovieTime
//
//  Created by Bipin Msb on 2022-08-05.
//
//

import Foundation
import CoreData


extension Movies {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Movies> {
        return NSFetchRequest<Movies>(entityName: "Movies")
    }

    @NSManaged public var id: Int16
    @NSManaged public var name: String?

}

extension Movies : Identifiable {

}
