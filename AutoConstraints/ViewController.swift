//
//  ViewController.swift
//  AutoConstraints
//
//  Created by LAPSHOP.IN on 05/02/20.
//  Copyright © 2020 BOPPO TECHNOLOGIES. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK:- Properties
    @UsesAutoLayout
    var newView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        newView.backgroundColor = .red
        view.addSubview(newView)
        let txtField = newView.constraintsForAllEdges(boundsOf: view, marginTop: 8.0, marginLeading: 8.0, marginBottom: 8.0, marginTrailing: 8.0)
        NSLayoutConstraint.activate(txtField)
    }


}

