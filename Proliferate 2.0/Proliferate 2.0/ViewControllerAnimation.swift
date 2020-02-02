//
//  ViewControllerAnimation.swift
//  Proliferate 2.0
//
//  Created by Kastur Koul on 2/2/20.
//  Copyright © 2020 Kastur Koul. All rights reserved.
//

import UIKit

class ViewControllerAnimation: ViewController {

    @IBOutlet weak var FlowerGrowing: UIImageView!
    
    let images = [
        UIImage(named: "seed_img")!,
        UIImage(named: "small sprout")!,
        UIImage(named: "big_sprout")!,
        UIImage(named: "bud")!,
        UIImage(named: "small bloom")!,
        UIImage(named: "full_daisy")!
    ]
    
    override func viewDidAppear(_ animated: Bool) {
        FlowerGrowing.image = UIImage.animatedImage(with: images, duration: 2.0)
    }//Already on screen
    
    override func viewDidLoad() {
        super.viewDidLoad() 

    } //Before it comes on the screeen
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
