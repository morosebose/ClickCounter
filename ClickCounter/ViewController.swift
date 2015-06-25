//
//  ViewController.swift
//  ClickCounter
//
//  Created by Surajit A Bose on 6/25/15.
//  Copyright (c) 2015 Surajit A Bose. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var count = 0
    var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Label
        var label = UILabel()
        label.frame = CGRectMake(150,150,60,60)
        label.text = "0"

        self.view.addSubview(label)
        self.label = label
        self.view.backgroundColor = UIColor.grayColor()

        // Increment Button
        var incButton = UIButton()
        incButton.frame = CGRectMake(150,250,150,60)
        incButton.setTitle("Increment", forState: .Normal)
        incButton.setTitleColor(UIColor.blueColor(), forState: .Normal)
        self.view.addSubview(incButton)

        incButton.addTarget(self, action: "incrementCount", forControlEvents: UIControlEvents.TouchUpInside)
        incButton.addTarget(self, action: "changeBackgroundColor", forControlEvents: UIControlEvents.TouchUpInside)


        // Decrement Button
        var decButton = UIButton()
        decButton.frame = CGRectMake(150,350,150,60)
        decButton.setTitle("Decrement", forState: .Normal)
        decButton.setTitleColor(UIColor.blueColor(), forState: .Normal)
        self.view.addSubview(decButton)

        decButton.addTarget(self, action: "decrementCount", forControlEvents: UIControlEvents.TouchUpInside)
        decButton.addTarget(self, action: "changeBackgroundColor", forControlEvents: UIControlEvents.TouchUpInside)

    }

    func incrementCount() {
        self.count++
        self.label.text = "\(self.count)"
    }

    func decrementCount() {
        self.count--
        self.label.text = "\(self.count)"
    }

    func changeBackgroundColor() {
        if self.view.backgroundColor == UIColor.grayColor() {
            self.view.backgroundColor = UIColor.orangeColor()
        }
        else {
            self.view.backgroundColor = UIColor.grayColor()
        }

    }



}

