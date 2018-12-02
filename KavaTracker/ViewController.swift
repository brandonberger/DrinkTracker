//
//  ViewController.swift
//  KavaTracker
//
//  Created by Brandon Berger on 12/1/18.
//  Copyright © 2018 Brandon Berger. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let lastKnownKratomCount = UserDefaults.standard.value(forKey: "currentKratomCount") as? Int
    let lastKnownKratomCountString = UserDefaults.standard.value(forKey: "currentKratomCount") as? String
    
    var kratomCount:Int = 0
    
    func checkForCurrentKratomCount() {
        if ((lastKnownKratomCount) != nil) {
            kratomCount = lastKnownKratomCount!
            kratomCounter.text = String(kratomCount)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        checkForCurrentKratomCount()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBOutlet weak var kratomCounter: UILabel!

    @IBAction func addKratom(_ sender: UIButton) {
        kratomCount = kratomCount + 1
        kratomCounter.text = String(kratomCount)
        UserDefaults.standard.set(kratomCount, forKey: "currentKratomCount")
    }
    
    @IBAction func subtractKratom(_ sender: UIButton) {
        kratomCount = kratomCount - 1
        kratomCounter.text = String(kratomCount)
        UserDefaults.standard.set(kratomCount, forKey: "currentKratomCount")
    }
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

