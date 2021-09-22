//
//  ViewController.swift
//  Proyecto1P_Jeyd
//
//  Created by Alumno on 14/09/21.
//  Copyright © 2021 Sebastian Encinas. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var playerFondo = AVAudioPlayer()
    var playerAnimal = AVAudioPlayer()
    
    //declaracion de sonindos
    let urlFondo = Bundle.main.url(forResource: "pollito", withExtension: "mp3")
    let urlPollito = Bundle.main.url(forResource: "pollo", withExtension: "mp3")
    
    @IBOutlet weak var txtNombres: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        do{
            playerFondo = try AVAudioPlayer(contentsOf: urlFondo!, fileTypeHint: AVFileType.mp3.rawValue)
                
            try AVAudioSession.sharedInstance().setCategory(.playback, mode:.default)
            try AVAudioSession.sharedInstance().setActive(true)
           
            playerFondo.numberOfLoops = -1
            playerFondo.volume = 0.2
            
            
        }catch let error {
            print(error.localizedDescription)
        }
        
        do{
            playerAnimal = try AVAudioPlayer(contentsOf:urlPollito!, fileTypeHint: AVFileType.mp3.rawValue)
            playerAnimal.play()
                   
                   
               }catch let error {
                   print(error.localizedDescription)
               }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func Tap_pollito(_ sender: Any) {
        txtNombres.text = "pollito"
        
    }
    

}

