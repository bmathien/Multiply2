//
//  ViewController.swift
//  Multiply
//
//  Created by teacher on 9/11/15.
//  Copyright (c) 2015 Mathien. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var segmentView: UISegmentedControl!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var myNewImage: UIImageView!

    var answer : Int = 0


    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

    @IBAction func calculateButtonTapped(sender: AnyObject)
    {
        var input1 = textField1.text.toInt()!
        var input2 = textField2.text.toInt()!


        if segmentView.selectedSegmentIndex == 0
        {
            answer = input1 + input2
        }
        else if segmentView.selectedSegmentIndex == 1
        {
            answer = input1 - input2
        }
        else if segmentView.selectedSegmentIndex == 2
        {
            answer = input1 * input2
        }
        else
        {
            answer = input1 / input2
        }

        answerLabel.text = "\(answer)"

        textField1.resignFirstResponder()
        textField2.resignFirstResponder()


        //IMAGE SETTINGS
        if answer == 64
        {
            myNewImage.image = UIImage(named: "boo")
            myNewImage.sizeToFit()
        }
        else if answer % 2 == 1
        {
            myNewImage.image = UIImage(named: "cookie-monster")
        }

        else if answer % 2 == 0
        {
            myNewImage.image = UIImage(named: "homer")
        }
        else
        {
            myNewImage.image = UIImage(named: "")
        }
    }




}