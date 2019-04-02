//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController,AVAudioPlayerDelegate{
    
    let nameSounds = ["note1","note2","note3","note4","note5","note6","note7"]
    var player : AVAudioPlayer!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func notePressed(_ sender: UIButton) {
        playSound(selectedSoundName: nameSounds[sender.tag - 1])
    }
        
    func playSound(selectedSoundName : String){
        print(selectedSoundName)
        let url = Bundle.main.url(forResource: selectedSoundName, withExtension: "wav")!
        do
        {
            player = try AVAudioPlayer(contentsOf: url)
            
        }
        catch
        {
            print(error)
        }
        player.play()
    }
}

