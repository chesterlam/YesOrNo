//
//  ViewController.swift
//  YesOrNo
//
//  Created by Chester Lam on 8/25/16.
//  Copyright © 2016 Chester Lam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var YesNoButton: UIButton!
    @IBOutlet weak var ClickHereButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        YesNoButton.alpha = 0.0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func runAfterDelay(delay: NSTimeInterval, block: dispatch_block_t) {
        let time = dispatch_time(DISPATCH_TIME_NOW, Int64(delay * Double(NSEC_PER_SEC)))
        dispatch_after(time, dispatch_get_main_queue(), block)
    }

    @IBAction func ClickHere(sender: UIButton) {
        let randomNumber = Int(arc4random_uniform(2))
        if randomNumber == 0 {
            YesNoButton.backgroundColor = UIColor.whiteColor()
            YesNoButton.setTitle("YES", forState: UIControlState.Normal)
            runAfterDelay(0.25) {
                self.YesNoButton.backgroundColor = UIColor.init(red: 0.0, green: 1.0, blue: 0.0, alpha: 1.0)
            }
        } else {
            YesNoButton.backgroundColor = UIColor.whiteColor()
            YesNoButton.setTitle("NO", forState: UIControlState.Normal)
            runAfterDelay(0.25) {
                self.YesNoButton.backgroundColor = UIColor.init(red: 1.0, green: 0.0, blue: 0.0, alpha: 1.0)
            }
        }
        YesNoButton.alpha = 1.0
    }
}

