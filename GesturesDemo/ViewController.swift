//
//  ViewController.swift
//  GesturesDemo
//
//  Created by  on 10/15/20.
//  Copyright © 2020 OreoApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var myImageView: UIImageView!
   
    
    
    
    @IBOutlet weak var myLabel: UILabel!
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
   }
    @IBAction func imageViewTapped(_ sender: Any)
    {
    print("Beach tapped")
        view.backgroundColor = UIColor.yellow
    }
    @IBAction func unicornPanned(_ sender: UIPanGestureRecognizer)
    {
let translation = sender.translation(in: view)
        
        guard let gestureView = sender.view else { return }
        
        gestureView.center = CGPoint( x: gestureView.center.x + translation.x, y: gestureView.center.y + translation.y )
        
        sender.setTranslation(.zero, in: view)


    
    }

}

