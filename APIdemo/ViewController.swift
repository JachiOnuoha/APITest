//
//  ViewController.swift
//  APIdemo
//
//  Created by Jachimike Onuoha on 7/13/19.
//  Copyright © 2019 Jachimike Onuoha. All rights reserved.
//

import UIKit
import algorithmia

class ViewController: UIViewController {
    
    @IBOutlet weak var GifView: UIImageView!
    
    override func viewDidLoad() {
            super.viewDidLoad()
        GifView.loadGif(name: "samurai")
                   // Reads text file into string named document
            if let filer = Bundle.main.path(forResource: "jack_london", ofType: "txt") {
                do {
                    let document = try String(contentsOfFile: filer)

                    // Calls MeaningCloud API on the string
                    var request = URLRequest(url: URL(string: "https://api.meaningcloud.com/summarization-1.0")!)
                    request.httpMethod = "POST"
                    request.httpBody = "key=API_KEY&txt=\(document)&sentences=5".data(using: .utf8)  //try? JSONSerialization.data(withJSONObject: params, options: [])
                    request.addValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")

                    let session = URLSession.shared
                    let task = session.dataTask(with: request, completionHandler: { data, response, error -> Void in
                        print(response!)
                        do {
                            let json = try JSONSerialization.jsonObject(with: data!) as! Dictionary<String, AnyObject>
                            print("============================================================ \n")
                            print("             MEANINGCLOUD RESPONSE STARTS HERE               \n")

                            print(json)
                        } catch {
                            print("error")
                        }
                    })

                    task.resume()
                    }
                 catch {
                    print("Whats happened")
                }
            }
                else {
                print("Nani")
            }
//            // End of Meaning cloud operation
//
//
//
//            // API Key for algorithmia
//            let client = Algorithmia.client(simpleKey: "simxlvnvTyzFJIGg8lagiRLZOmx1")
//
//            // Reads text file and feeds it into the algorithm to be summarized
//            if let filepath = Bundle.main.path(forResource: "jack_london", ofType: "txt") {
//                do {
//                    let contents = try String(contentsOfFile: filepath)
//                    //print(contents)
//                    let algo = client.algo(algoUri: "nlp/Summarizer/0.1.8")
//                    print("\n")
//                    print("===================================================================")
//                    print("             ALGORITHMIA RESPONSE STARTS HERE            \n")
//
//                    algo.pipe(text: contents) { resp, error in
//                        print(resp.getText())
//                        print("\n")
//                    }
//                } catch {
//                    print("An error was found")
//                }
//            } else {
//                print("Something else happened")
//            }

        }

}
