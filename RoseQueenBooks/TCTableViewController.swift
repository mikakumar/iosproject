 //
//  TCTableViewController.swift
//  RoseQueenBooks
//
//  Created by epita on 16/05/2018.
//  Copyright © 2018 epita.fr.RoseQueen. All rights reserved.
//

import UIKit

class TCTableViewController: UITableViewController {
    
    var bookArray = [Books]()
    
    var clickedIndex : IndexPath?
    
    @IBOutlet var Tview: UITableView!
    
    var instance : Books?
    var images = [UIImage(named:"grave"), UIImage(named:"knife"), UIImage(named:"hotel-1"), UIImage(named:"dice"), UIImage(named: "rose"), UIImage(named: "moon"), UIImage(named: "cblossm")]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let book1 = Books(title: "Till Death do Us Unite", yearofrelease: "2019", summary: "A complete stranger collects rich people's family inheritance with her smug rich boyfriend and is probably going to murder you(maybe). You're playing as her by the way.", genre: "Horror, mystery", mc: "Violett White", image: "grave");
        let book2 = Books(title: "The Murder of May Valentine", yearofrelease: "2020", summary: "Tfw you accidentally murder a supernatural being, and now have to keep it a secret from your big brother while also running away from other witches who may or may not murder you horribly.", genre: "Horror, myster, thriller", mc: "Juliann Hunt", image: "knife");
        let book3 = Books(title: "Hotel Karma", yearofrelease: "2024", summary: "An amnesiac human wakes up in a hotel full of monsters, who like having humans for breakfast, lunch and dinner and has to depend on two monsters to protect him.", genre: "Horror, gore, mystery", mc: "Blackheart", image: "hotel-1");
        let book4 = Books(title: "Paranoiac", yearofrelease: "2028", summary: "When two would-be detectives get trapped in a madhouse with their suspects in a murder case which honestly may or may not be supernatural, either of them is terrible.", genre: "Thriller, mystery", mc: "Amadeus Star", image: "dice");
        let book5 = Books(title: "From Ashes to Roses", yearofrelease: "2018", summary: "When your dead son shows up 2 years later, not a day older and a whole lot richer, is this real life or a conspiracy?", genre: "Drama, Mystery, Horror/Gore", mc: "Ashe Shanahan(Boy A)", image: "rose")
        let book6 = Books(title: "Night and Time", yearofrelease: "2018", summary: "Moving to a foreign country is hard and your eldritch abomination of a ghost of your brother isn't making it easy for you.", genre: "Supernatural, Surreal", mc: "Malgre La Nuit", image: "moon")
        let book7 = Books(title: "Eternal Hydrangea", yearofrelease: "2019", summary: "We are literally never going shopping again(or being friends...also because you're dead but what can you do)", genre: "Tragedy", mc: "Cherry Blossom, Hydrangea", image: "cblossm")
        
        bookArray.append(book1);
        bookArray.append(book2);
        bookArray.append(book3);
        bookArray.append(book4);
        bookArray.append(book5);
        bookArray.append(book6);
        bookArray.append(book7);
        
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return (bookArray.count)
        
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TCCell", for: indexPath) as! TCTableViewCell
        
        cell.LName.text = bookArray[indexPath.row].title
        cell.LGenre.text = bookArray[indexPath.row].genre
        cell.imgview.image = images[indexPath.row]
        
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        clickedIndex = indexPath
        self.performSegue(withIdentifier: "link", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let newVC =  segue.destination as! SCViewController
        newVC.instance = bookArray[(clickedIndex?.row)!]
    }
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}

