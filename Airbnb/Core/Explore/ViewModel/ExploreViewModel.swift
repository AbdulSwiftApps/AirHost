//
//  ExploreViewModel.swift
//  Airbnb
//
//  Created by Abdul Hassan on 5/5/24.
//

import Foundation

class ExploreViewModel: ObservableObject {
    @Published var listing = [Listing]()
    private let service: ExploreService
    
    init(service: ExploreService) {
        self.service = service
        
        Task { await fetchListings() }
    }
    
    func fetchListings() async{
        do {
            self.listing = try await service.fetchListing()
        } catch {
            print("DEBUG: faile to fetch listings with error \(error.localizedDescription)")
        }
    }
}
