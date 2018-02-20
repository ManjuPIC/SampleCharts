//
//  ViewController.swift
//  Sample
//
//  Created by Manjunath Shivakumara on 20/02/18.
//  Copyright © 2018 Manjunath Shivakumara. All rights reserved.
//

import UIKit
import PhilipsCharts

class ViewController: UIViewController {

    @IBOutlet var barchartBtn : UIButton!
    @IBOutlet var linechartBtn : UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        barchartBtn.layer.cornerRadius = 10.0
        linechartBtn.layer.cornerRadius = 10.0
        
        barchartBtn.layer.borderColor = UIColor.black.cgColor
        linechartBtn.layer.borderColor = UIColor.black.cgColor
        
        barchartBtn.layer.borderWidth = 2.0
        linechartBtn.layer.borderWidth = 2.0
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showBarGraph()
    {
        let vc : LoadGraphViewController = LoadGraphViewController()
        let retVC = vc .loadBarChart()
        self.navigationController?.pushViewController(retVC, animated: false)
    }
    
    @IBAction func showLineGraph()
    {
        let vc : LoadGraphViewController = LoadGraphViewController()
        let retVC = vc .loadLineChart()
        self.navigationController?.pushViewController(retVC, animated: false)
    }
}

