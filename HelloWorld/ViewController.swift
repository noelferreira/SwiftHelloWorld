//
//  ViewController.swift
//  HelloWorld
//
//  Created by Noel Ferreira on 8/28/16.
//  Copyright © 2016 Noel Ferreira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background.jpg")!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showMessage(){
        
        let date = NSDate()
        let calendar = NSCalendar.currentCalendar()
        let components = calendar.components([.Day, .Month, .Year], fromDate: date)
        
        let year = String(components.year)
        let month = String(components.month)
        let day = String(components.day)
        
        let deviceName = UIDevice.currentDevice().name
        
        UIDevice.currentDevice().batteryMonitoringEnabled = true
        let batteryLevel = "Nível da bateria: " + String(Int(UIDevice.currentDevice().batteryLevel)*100) + "%"
        
        let alertController = UIAlertController(title: "Bem-Vindo ao meu novo aplicativo", message: "Data de hoje no " + deviceName + " : " + day + "/" + month + "/" + year + "\n" + batteryLevel, preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alertController, animated: true, completion: nil)
    }


}

