//
//  ApiCaller.swift
//  ValoStats
//
//  Created by Amir on 22/04/21.
//

import Foundation
let valorantApiLink = URL(string: "https://developer.riotgames.com/apis#val-ranked-v1/GET_getLeaderboard")
if let unwrappedURL = valorantApiLink {
    var request = URLRequest(url: unwrappedURL)
    request.addValue("71201fa9-7095-4c99-b675-28aef67d3f77", forHTTPHeaderField: "71201fa9-7095-4c99-b675-28aef67d3f77")
    // Make your request and handle the response
}
