//
//  ViewController.swift
//  LayoutConstraintExamples
//
//  Created by Matt Andrzejczuk on 3/30/17.
//  Copyright © 2017 Matt Andrzejczuk. All rights reserved.
//

import UIKit

let SCREEN = UIScreen.main.bounds
let SCREEN_WIDTH = UIScreen.main.bounds.width
let SCREEN_HEIGHT = UIScreen.main.bounds.height



class ViewController: UIViewController {

    
    var headerView: UIView!
    var dataView: UIView!
    var footerView: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }

    override func awakeFromNib() {
        let genericFrame = CGRect(x: 0, y: 0, width: 300, height: 50)
        headerView = UILabel(frame: genericFrame)
        dataView = UIView(frame: genericFrame)
        footerView = UIView(frame: genericFrame)
        
        autolayoutUsingConstraint()
    }

    
    func initUI() {
        headerView.backgroundColor = .red
        dataView.backgroundColor = .blue
        footerView.backgroundColor = .purple
        
        headerView.translatesAutoresizingMaskIntoConstraints = false
        dataView.translatesAutoresizingMaskIntoConstraints = false
        footerView.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(headerView)
        self.view.addSubview(dataView)
        self.view.addSubview(footerView)
    }
    
    func autolayoutUsingConstraint() {
        initUI()
        
        let cn1 = NSLayoutConstraint(item: headerView!,
                                     attribute: .leading,
                                     relatedBy: .equal,
                                     toItem: view,
                                     attribute: .leading,
                                     multiplier: 1.0,
                                     constant: 20);
        //Header view trailing end is 20 px from right edge of the screen
        let cn2 = NSLayoutConstraint(item: headerView!,
                                     attribute: .trailing,
                                     relatedBy: .equal,
                                     toItem: view,
                                     attribute: .trailing,
                                     multiplier: 1.0,
                                     constant: -20);
        //Header view height = constant 60
        let cn3 = NSLayoutConstraint(item: headerView!,
                                     attribute: .height,
                                     relatedBy: .equal,
                                     toItem: nil,
                                     attribute: .notAnAttribute,
                                     multiplier: 1.0,
                                     constant: 60);
        
        let cn5 = NSLayoutConstraint(item: headerView!,
                                     attribute: .top,
                                     relatedBy: .equal,
                                     toItem: view,
                                     attribute: .top,
                                     multiplier: 1.0,
                                     constant: 20);
        
        
        //Footer Section
        let cn16 = NSLayoutConstraint(item: footerView!,
                                      attribute: .leading,
                                      relatedBy: .equal,
                                      toItem: view,
                                      attribute: .leading,
                                      multiplier: 1.0,
                                      constant: 20);
        let cn17 = NSLayoutConstraint(item: footerView!,
                                      attribute: .trailing,
                                      relatedBy: .equal,
                                      toItem: view,
                                      attribute: .trailing,
                                      multiplier: 1.0,
                                      constant: -20);
        let cn18 = NSLayoutConstraint(item: footerView!,
                                      attribute: .height,
                                      relatedBy: .equal,
                                      toItem: nil,
                                      attribute: .notAnAttribute,
                                      multiplier: 1.0,
                                      constant: 50);
        let cn21 = NSLayoutConstraint(item: footerView!,
                                      attribute: .bottom,
                                      relatedBy: .equal,
                                      toItem: view,
                                      attribute: .bottom,
                                      multiplier: 1.0,
                                      constant: -10);
        
        
        view.addConstraint(cn1)
        view.addConstraint(cn2)
        view.addConstraint(cn3)
        view.addConstraint(cn5)
        view.addConstraint(cn16)
        view.addConstraint(cn17)
        view.addConstraint(cn18)
        view.addConstraint(cn21)
        
        
        dataView.translatesAutoresizingMaskIntoConstraints = false
        //Table View Controller Contraints
        NSLayoutConstraint(item: dataView,
                           attribute: .top,
                           relatedBy: .equal,
                           toItem: headerView,
                           attribute: .bottom,
                           multiplier: 1.0,
                           constant: 10).isActive = true;
        NSLayoutConstraint(item: dataView,
                           attribute: .leading,
                           relatedBy: .equal,
                           toItem: view,
                           attribute: .leading,
                           multiplier: 1.0,
                           constant: 20).isActive = true;
        NSLayoutConstraint(item: dataView,
                           attribute: .trailing,
                           relatedBy: .equal,
                           toItem: view,
                           attribute: .trailing,
                           multiplier: 1.0,
                           constant: -20).isActive = true;
        NSLayoutConstraint(item: dataView,
                           attribute: .bottom,
                           relatedBy: .equal,
                           toItem: footerView,
                           attribute: .top,
                           multiplier: 1.0,
                           constant: -10).isActive = true;
    }

}











/// RESPONSIVE LAYOUT
/// THE MOST IMPORTANT SCAFFOLD OF THEM ALL!!!










