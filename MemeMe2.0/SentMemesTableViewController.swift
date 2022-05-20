//
//  SentMemesTableViewController.swift
//  MemeMe2.0
//
//  Created by Jia Li on 5/19/22.
//

import UIKit

// MARK: - SentMemesTableViewController: UIViewController

class SentMemesTableViewController: UITableViewController {
    
    // MARK: Properties
    
    // Get the array of sent memes
    var memes: [Meme]! {
        let object = UIApplication.shared.delegate
        let appDelegate = object as! AppDelegate
        return appDelegate.memes
    }
    
    // MARK: Table View Data Source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.memes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MemeCell")!
        let meme = self.memes[(indexPath as NSIndexPath).row]
        
        // Set the image
        cell.imageView?.image = meme.memedImage
        
        // Put the topText and bottomText from meme to detailText
//        if let detailTextLabel = cell.detailTextLabel {
//            detailTextLabel.text = "Scheme: \(villain.evilScheme)"
//        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // TODO: Create detail layout and assign identifier
        let detailController = self.storyboard!.instantiateViewController(withIdentifier: "SentMemesDetailViewController") as! SentMemesDetailViewController
        detailController.meme = self.memes[(indexPath as NSIndexPath).row]
        self.navigationController!.pushViewController(detailController, animated: true)
    }
}
