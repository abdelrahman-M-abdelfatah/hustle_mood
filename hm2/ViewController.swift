//
//  ViewController.swift
//  hm2
//
//  Created by admin on 9/3/20.
//  Copyright © 2020 admin. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {
   var play:AVAudioPlayer!
    @IBOutlet weak var darkblue: UIImageView!
    @IBOutlet weak var power: UIButton!
    @IBOutlet weak var rocket: UIImageView!
    @IBOutlet weak var cloud: UIImageView!
    @IBOutlet weak var hm: UILabel!
    @IBOutlet weak var on: UILabel!
    @IBOutlet weak var cloud_holder: UIView!
    override func viewDidLoad() {
         
       let path = Bundle.main.path(forResource: "hustle-on", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        do{
            play = try AVAudioPlayer(contentsOf: url)
            play.prepareToPlay()
        }catch let error as NSError
        {
            print(error.description)
        }
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func power_function(_ sender: UIButton) {
        power.isHidden = true
        darkblue.isHidden = true
        cloud_holder.isHidden = false
        play.play()
        UIView.animate(withDuration: 2.3, animations: {
             self.rocket.frame = CGRect(x: 0, y: 40, width: 414, height: 704)
        }) { (finished) in
            self.hm.isHidden = false
            self.on .isHidden = false
            
        }
    }
    

}

