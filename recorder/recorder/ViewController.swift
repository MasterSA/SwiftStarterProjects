//
//  ViewController.swift
//  recorder
//
//  Created by Azizur Rahman on 2018-07-02.
//  Copyright © 2018 Azizur Rahman. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate, AVAudioRecorderDelegate {

    @IBOutlet weak var recordBt: UIButton!
    @IBOutlet weak var playBt: UIButton!
    
    var recorder = AVAudioRecorder()
    var player = AVAudioPlayer()
    
    var fileName = "audioFile.m4a"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func setUpRecorder() {
        
        var recorderSettings: [String : Any] = [AVFormatIDKey: kAudioFormatAppleLossless, AVEncoderAudioQualityKey: AVAudioQuality.max.rawValue, AVEncoderBitRateKey: 320000, AVNumberOfChannelsKey: 2, AVSampleRateKey: 44100.0]
        
        var error: NSError?
        
        recorder = AVAudioRecorder(url: getFileURL(), settings: recorderSettings) try error
        
    }
    
    func getCacheDirectory() -> String {
        let paths = NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.documentDirectory, FileManager.SearchPathDomainMask.userDomainMask, true)
        
        return paths[0]
    }
    
    func getFileURL() -> NSURL {
        let path = getCacheDirectory().appending(fileName)
        
        let filePath = NSURL(fileURLWithPath: path)
        
        
        return filePath!
    }
    

    @IBAction func record(_ sender: Any) {
    }
    
    @IBAction func play (_ sender: Any) {
    }
    
}

