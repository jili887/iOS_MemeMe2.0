//
//  SentMemesDetailViewController.swift
//  MemeMe2.0
//
//  Created by Jia Li on 5/19/22.
//

import UIKit

// MARK: - SentMemesDetailViewController: UIViewController

class SentMemesDetailViewController: UIViewController {
 
    // MARK: Properties
    
    var meme: Meme!
    
    // MARK: Outlets
    
    @IBOutlet weak var imageView: UIImageView!
    
    // MARK: Life Cycle
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.imageView!.image = meme.memedImage
    }
}
