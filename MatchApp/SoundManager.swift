//
//  SoundManager.swift
//  MatchApp
//
//  Created by DSIAdmin on 12/28/21.
//

import Foundation
import AVFoundation

class SoundManager {
    
    var audioPlayer:AVAudioPlayer?
    
    enum SoundEffect {
        case flip
        case match
        case nomatch
        case shuffle
    }
    
    func playSound(effect:SoundEffect) {
        
        var soundFilename = ""
        
        // switching based on the given effect parameter
        switch effect {
            case .flip:
                soundFilename = "cardflip"
            
            case .match:
                soundFilename = "dingcorrect"
            
            case .nomatch:
                soundFilename = "dingwrong"
            
            case .shuffle:
                soundFilename = "shuffle"
        }
        
        // Get the path to the resource
        let bundlePath = Bundle.main.path(forResource: soundFilename, ofType: ".wav")
        
        // Check that it's not nil (this is saying, make sure the bundle path is not equal to nil, otherwise return)
        guard bundlePath != nil else {
            // Couldn't find the resource, exit
            return
        }
        
        let url = URL(fileURLWithPath: bundlePath!)
        
        do{
            
            // Create the audio player
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            
            // Play the sound effect
            audioPlayer?.play()
            
        } catch {
            print("Couldn't create an audio player")
            return
        }
        
        
    }
    
}
