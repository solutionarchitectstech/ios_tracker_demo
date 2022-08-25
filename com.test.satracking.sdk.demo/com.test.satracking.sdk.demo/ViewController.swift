//
//  ViewController.swift
//  com.test.satracking.sdk.demo
//
//  Created by Maksim on 25.08.2022.
//

import UIKit
import SATrackingSDK

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let options = TrackerOptions(
                applicationId: "appId",
                partnerId: "partnerId",
                uid: "uid",
                baseURL: "https://YOUR_URL")

        TechTracker.initialize(options: options)

        let tracker = TechTracker.sharedTracker

        var click = Click()
        click.page = "page click"
        click.value = "value click"

        tracker.event(event: click)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

