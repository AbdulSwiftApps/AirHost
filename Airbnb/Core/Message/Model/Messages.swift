//
//  Message.swift
//  AirHost
//
//  Created by Abdul Hassan on 5/16/24.
//

import Foundation

struct Messages: Codable, Hashable {    
    let airHostMessageTitle: TripStatus
    let airHostSupport: String
    let airHostMessage: String
    let tripStatus: TripStatus
    var hostMessage: String
    let dateStayed: String
    var dateMessaged: String
}


enum TripStatus: Int, Codable, Identifiable, Hashable {
    case closedStatus
    case upcommingStatus
    case currentStatus
    
    var status: String {
        switch self {
        case .closedStatus: return "Closed"
        case .upcommingStatus: return "Upcoming"
        case .currentStatus: return "Current"
        }
    }
    
    var id: Int { return self.rawValue }

}
