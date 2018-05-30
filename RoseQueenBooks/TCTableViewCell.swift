//
//  TCTableViewCell.swift
//  RoseQueenBooks
//
//  Created by epita on 16/05/2018.
//  Copyright © 2018 epita.fr.RoseQueen. All rights reserved.
//

import UIKit

class TCTableViewCell: UITableViewCell {
    
    
    
    @IBOutlet weak var imgview: UIImageView!
    @IBOutlet weak var LName: UILabel!
    
    @IBOutlet weak var LGenre: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}

