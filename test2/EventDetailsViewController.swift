//
//  EventDetailsViewController.swift
//  test2
//
//  Created by Sabrina R Krueger on 2/8/20.
//  Copyright © 2020 Winners. All rights reserved.
//

import UIKit

class EventDetailsViewController: UIViewController {
    
    @IBOutlet weak var eventImage: UIImageView!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    var event: [String:Any]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        eventImage.image = UIImage(named: (event["image"] as? String)!)
        timeLabel.text = event["time"] as? String
        titleLabel.text = event["title"] as? String
        
        // Do any additional setup after loading the view.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
