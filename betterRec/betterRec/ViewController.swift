//
//  ViewController.swift
//  betterRec
//
//  Created by Azizur Rahman on 2018-07-04.
//  Copyright © 2018 Azizur Rahman. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioRecorderDelegate, UITableViewDelegate, UITableViewDataSource {
    
    var recordingSession: AVAudioSession!
    var recorder: AVAudioRecorder!
    var numberOfRecordings = 0
    @IBOutlet weak var recordBT: UIButton!
    @IBOutlet weak var recordingTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        recordingSession = AVAudioSession.sharedInstance()
        if let number:Int = UserDefaults.standard.object(forKey: "?KEY?") as? Int{
            numberOfRecordings = number
            
        }
        
        AVAudioSession.sharedInstance().recordPermission()
        
        
    }

    @IBAction func record(_ sender: Any) {
        if recorder == nil {
            numberOfRecordings += 1
            let filename = getDirectory().appendingPathComponent("\(numberOfRecordings).m4a")
            let recorderSettings: [String : Any] = [AVFormatIDKey: kAudioFormatAppleLossless, AVEncoderAudioQualityKey: AVAudioQuality.max.rawValue, AVEncoderBitRateKey: 320000, AVNumberOfChannelsKey: 2, AVSampleRateKey: 44100.0]
            do {
                recorder = try AVAudioRecorder(url: filename, settings: recorderSettings)
                recorder.delegate = self
                recorder.record()
                
                recordBT.setTitle("Stop", for: .normal)
                
            }
            catch {
                
                displayAlert(title: "Uh Oh", message: "Sorry, something went wrong so we could not record.")
                
            }
            
        } else {
            recorder.stop()
            recorder = nil
            UserDefaults.standard.set(numberOfRecordings, forKey: "?KEY?")
            
            recordBT.setTitle("Record", for: .normal)
            
        }
        
    }
    
    func getDirectory() -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let documentDirectory = paths[0]
        return documentDirectory
        
    }
    
    func displayAlert(title: String, message: String) {
        
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        
        self.present(alertController, animated: true, completion: nil)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numberOfRecordings
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = recordingTableView.dequeueReusableCell(withIdentifier: "recordingCell", for: indexPath)
        cell.textLabel?.text = String(indexPath.row + 1)
        
        return cell
    }
    
}

