//
//  ViewController.swift
//  MediaPlayerVideoSample
//
//  Created by wealthyjalloh on 28/06/2016.
//  Copyright © 2016 CWJ. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let destination = segue.destinationViewController as! AVPlayerViewController
        let bundle = NSBundle.mainBundle()
        
        // our video
        let movPath = bundle.pathForResource("02", ofType: "mov")
        let url = NSURL(fileURLWithPath: movPath!)
        destination.player = AVPlayer(URL: url)
    }


}

