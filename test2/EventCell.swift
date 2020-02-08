//
//  EventCell.swift
//  test2
//
//  Created by Sabrina R Krueger on 2/8/20.
//  Copyright © 2020 Winners. All rights reserved.
//

import UIKit

class EventCell: UITableViewCell {
    
    @IBOutlet weak var eventImage: UIImageView!
       @IBOutlet weak var namaLabel: UILabel!
       @IBOutlet weak var timeLabel: UILabel!
       @IBOutlet weak var locationLabel: UILabel!
       @IBOutlet weak var descriptionLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
