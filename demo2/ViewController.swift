//
//  ViewController.swift
//  demo2
//
//  Created by HoaLD on 4/22/20.
//  Copyright © 2020 HoaLD. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.showEditorDemo()
    }
    
    func showEditorDemo(filename: String? = nil, wordPressMode: Bool = false) {
        let controller: EditorDemoController
            
        if let filename = filename {
            let sampleHTML = getSampleHTML(fromHTMLFileNamed: filename)

            controller = EditorDemoController(withSampleHTML: sampleHTML, wordPressMode: wordPressMode)
        } else {
            controller = EditorDemoController(wordPressMode: wordPressMode)
        }
        
        navigationController?.pushViewController(controller, animated: true)
    }
    
    func getSampleHTML(fromHTMLFileNamed fileName: String) -> String {
        let htmlFilePath = Bundle.main.path(forResource: fileName, ofType: "html")!
        let fileContents: String
        
        do {
            fileContents = try String(contentsOfFile: htmlFilePath)
        } catch {
            fatalError("Could not load the sample HTML.  Check the file exists in the target and that it has the correct name.")
        }
        
        return fileContents
    }
}

