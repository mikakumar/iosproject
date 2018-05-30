//
//  SCViewController.swift
//  RoseQueenBooks
//
//  Created by epita on 16/05/2018.
//  Copyright © 2018 epita.fr.RoseQueen. All rights reserved.
//

import UIKit

class SCViewController: UIViewController {
    
    
    @IBOutlet var SCView: UIView!
    

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var yor: UILabel!
    @IBOutlet weak var summary: UITextView!
    
    @IBOutlet weak var image: UIImageView!
    
    
    var instance : Books?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = instance?.title
        yor.text = instance?.yearofrelease
        let images = UIImage(named: (instance?.image)!)
        image.image = images
        
        summary.text=instance?.summary
        
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}

