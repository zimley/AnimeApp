//
//  Networking.swift
//  AnimeApp
//
//  Created by Zim on 6/4/21.
//

import Foundation

public class Networking
{
    
    public func searchForAnimesWithName(AnimeName: String)
    {
        //build our URL string, dynamically, with the AnimeName parameter
        let urlString = "https://kitsu.io/api/edge/anime?filter[text]=" + AnimeName
        let url = URL(string: urlString)!
        
        //unwrapping and fetching the data from the URL
        guard let data = try? Data(contentsOf: url) else {
            //error handling here in future
            return
        }
        do {
            //serialize the json and save to a dictionary
            if let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
                // try to read the dictionary to create Anime List from search term
                if (json["data"] as? [[String:AnyObject]]) != nil {
                    //ending
                  //  print(dictionary["attributes"]["description"] as String?)
                    
                }
            }
        }
        catch{  as  {
            
        }
        
        print("Network fetched: \(data)")
    }
}
