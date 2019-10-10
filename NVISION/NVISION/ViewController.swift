//
//  ViewController.swift
//  NVISION
//
//  Created by Eric Witowski on 10/7/19.
//  Copyright © 2019 Eric Witowski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomBoxIndex1 : Int = 0
    var randomBoxIndex2 : Int = 0

    let myName = "Eric"
    let dry = "Dont repeat yourself"
    
    let boxArray = ["NVISION0", "NVISION1", "NVISION2", "NVISION3", "NVISION4", "NVISION5", "NVISION6", "NVISION7", "NVISION8", "NVISION9", "NVISION10", "NVISION11", "NVISION12", "NVISION13", "NVISION14", "NVISION15", "NVISION16", "NVISION17", "NVISION18", "NVISION19"]
    
    @IBOutlet weak var nVisionBoxImage1: UIImageView!
    @IBOutlet weak var nVisionBoxImage2: UIImageView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //que// Do any additional setup after loading the view.
        
        updateBoxImages()
    }

    @IBAction func motivateMeButtonPressed(_ sender: UIButton) {
        
        updateBoxImages()
        
        }
    
    
    
    func updateBoxImages(){
        randomBoxIndex1 = Int(arc4random_uniform(20))
//        randomBoxIndex2 = Int(arc4random_uniform(20))
        
        print(randomBoxIndex1)
        
        nVisionBoxImage1.image = UIImage(named: boxArray[randomBoxIndex1])
//        nVisionBoxImage2.image = UIImage(named: boxArray[randomBoxIndex2])
        
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?){
        updateBoxImages()
    }
}

