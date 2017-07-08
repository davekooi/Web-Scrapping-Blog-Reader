//
//  DetailViewController.swift
//  Blog reader
//
//  Created by David Kooistra on 5/25/17.
//  Copyright © 2017 David. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!


    func configureView() {
        // Update the user interface for the detail item.
        if let detail = detailItem {
            self.title = detail.value(forKey: "title") as! String
            if let blogWebView = webView {
                blogWebView.loadHTMLString(detail.value(forKey: "content") as! String, baseURL: nil)
            }
            

        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var detailItem: Event? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

