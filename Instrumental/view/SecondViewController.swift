//
//  SecondViewController.swift
//  Instrumental
//
//  Created by epita on 17/05/2018.
//  Copyright © 2018 epita. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var instance : instra?

    
    @IBOutlet weak var detailLabel: UILabel!
   
    @IBOutlet weak var detailImageView: UIImageView!
    
    @IBOutlet weak var detailDescription: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detailLabel.text = instance?.name
        let images = UIImage(named: (instance?.image)!)
        detailImageView.image = images
        detailDescription.text = instance?.description
        
        

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
