//
//  EventsViewController.swift
//  test2
//
//  Created by Sabrina R Krueger on 2/8/20.
//  Copyright © 2020 Winners. All rights reserved.
//

import UIKit

class EventsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        print(events.count)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return events.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EventCell") as! EventCell
        
        let event = events[indexPath.row]
        cell.eventImage.image = UIImage(named: (event["image"] as? String)!)
        cell.namaLabel.text = event["title"] as? String
        cell.locationLabel.text = event["location"] as? String
        cell.timeLabel.text = event["time"] as? String

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let cell = sender as! UITableViewCell
        let indexPath = tableView.indexPath(for: cell)!
        let event = events[indexPath.row]
        
        let detailVC = segue.destination as! EventDetailsViewController
        
        detailVC.event = event
        
        tableView.deselectRow(at: indexPath, animated: true)
    }


}
