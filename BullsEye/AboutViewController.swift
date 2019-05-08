//
//  AboutViewController.swift
//  BullsEye
//
//  Created by Tadeu Cruz on 04/05/19.
//  Copyright © 2019 Razeware LLC. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {


    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let url = Bundle.main.url(forResource: "BullsEye", withExtension: "html") {
            if let htmlData = try? Data(contentsOf: url) {
                let baseUrl = URL(fileURLWithPath: Bundle.main.bundlePath)
                webView.load(htmlData, mimeType: "text/html", textEncodingName: "UTF-8", baseURL: baseUrl)
            }
        }
    }
    
    @IBAction func close() {
        dismiss(animated: true, completion: nil)
    }
    
}
