//
//  ExploreService.swift
//  Airbnb
//
//  Created by Abdul Hassan on 5/5/24.
//

import Foundation

class ExploreService {
    func fetchListing() async throws -> [Listing] {
        return DeveloperPreview.shared.listings
    }
}
