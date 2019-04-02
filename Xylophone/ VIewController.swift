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
    
//    var coinSound = NSURL(fileURLWithPath: Bundle.main.path(forResource: "coin", ofType: "wav")!)
//    var audioPlayer = AVAudioPlayer()
    
    let nameSounds = ["note1","note2","note3","note4","note5","note6","note7"]
    var selectedSoundName:String = ""
    var player : AVAudioPlayer!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        selectedSoundName = nameSounds[sender.tag - 1]
        playSound()
        
    }
        
        

    func playSound(){
        let url = Bundle.main.url(forResource: selectedSoundName, withExtension: "wav")!
        do
        {
            player = try AVAudioPlayer(contentsOf: url)
            
//            guard let player = player else { return }
//
//            try AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playback)
//
//            player.prepareToPlay()
//            player.play()
        }
            
//        catch let error
        catch
        {
//            print(error.localizedDescription)
            print(error)
        }
        player.play()
    }
}

