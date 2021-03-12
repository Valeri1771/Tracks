//
//  TraksViewController.swift
//  Tracks
//
//  Created by Valeri Tsyganova on 05.03.2021.
//

import UIKit

class TraksViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let tracks = [
        Track(artist: "Drake",
              title: "Worst behavior",
              duration: "4:30",
              cover: UIImage(named: "Drake")),
        
        Track(artist: "Tech N9ne",
              title: "Jampin Jax",
              duration: "4:58",
              cover: UIImage(named: "Tech N9ne")),
        
        Track(artist: "Destiny Rogers",
              title: "Tomboy",
              duration: "3:18",
              cover: UIImage(named: "Tomboy")),
        
        Track(artist: "The Weekend",
              title: "Heartless",
              duration: "3:20",
              cover: UIImage(named: "The weekend")),
        
        Track(artist: "Sub Urban",
              title: "On our knees",
              duration: "4:19",
              cover: UIImage(named: "Konoba")),
        
        Track(artist: "Rihanna",
              title: "Needed me",
              duration: "3:11",
              cover: UIImage(named: "Riri babe")),
        
        Track(artist: "Octavian",
              title: "Party here",
              duration: "2:43",
              cover: UIImage(named: "octavian party here")),
        
        Track(artist: "Snarky Puppy, Chris Turner",
              title: "Liquid Love",
              duration: "6:36",
              cover: UIImage(named: "Liquid")),
        
        Track(artist: "Kyson",
              title: "Every Hight",
              duration: "3:33",
              cover: UIImage(named: "Kyson"))
        ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.systemTeal
        self.navigationItem.title = "Track list"
        self.navigationController?.navigationBar.prefersLargeTitles = true        
    }
    
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tracks.count
    }
    
 
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TrackCell", for: indexPath)
        
        let track = tracks[indexPath.row]
        cell.textLabel?.text = track.artist
        cell.detailTextLabel?.text = track.title
        
        return cell 
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let trackDetailsViewController = storyboard?.instantiateViewController(withIdentifier: "TrackDetails") as! TrackDetailsViewController
        
        let track = tracks[indexPath.row]
        trackDetailsViewController.configure(with: track)
      
        navigationController?.pushViewController(trackDetailsViewController, animated: true)
    }
    
}




