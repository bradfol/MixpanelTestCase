//
//  ViewController.swift
//  MixpanelTestCase
//
//  Created by Brad Fol on 4/29/15.
//  Copyright (c) 2015 Brad Fol. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func resetMixpanel() {
        let mixpanel = Mixpanel.sharedInstance()
        mixpanel.reset()
        mixpanel.identify(NSUUID().UUIDString)
        mixpanel.joinExperimentsWithCallback {
            let alert = UIAlertView(title: "Experiment Reset Complete", message: nil, delegate: nil, cancelButtonTitle: "OK")
            alert.show()
        }
    }

}

