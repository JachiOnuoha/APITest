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

    let input = "A purely peer-to-peer version of electronic cash would allow online payments to be sent directly from one party to another without going through a financial institution. Digital signatures provide part of the solution, but the main benefits are lost if a trusted third party is still required to prevent double-spending. We propose a solution to the double-spending problem using a peer-to-peer network. The network timestamps transactions by hashing them into an ongoing chain of hash-based proof-of-work, forming a record that cannot be changed without redoing the proof-of-work. The longest chain not only serves as proof of the sequence of events witnessed, but proof that it came from the largest pool of CPU power. As long as a majority of CPU power is controlled by nodes that are not cooperating to attack the network, they'll generate the longest chain and outpace attackers. The network itself requires minimal structure. Messages are broadcast on a best effort basis, and nodes can leave and rejoin the network at will, accepting the longest proof-of-work chain as proof of what happened while they were gone.";
    
    let client = Algorithmia.client(simpleKey: "simxlvnvTyzFJIGg8lagiRLZOmx1")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        let nlp_directory = client.dir("data://JachiOnuoha/nlp_directory");
//
//        nlp_directory.exists() { exists, error in
//            if (error == nil){
//                if (exists == false) {
//                    nlp_directory.create(readACL:.MY_ALGORITHMS) {error in
//                        if (error == nil) {
//                            print("Folder created")
//                        } else {
//                            print(error)
//                        }
//                    }
//                }
//            }
//        }
//
//        let text_file = "jack_london.txt"
//
//        nlp_directory.file(name: text_file).exists() { exists, error in
//            if (error == nil) {
//                // Check if file exists
//                let local_file = URL(string: "/Desktop/jack_london")
//                if (exists == false) {
//                    nlp_directory.put(file: local_file!) { _, error in
//                        if (error == nil){
//                            print("File Uploaded Succesfully")
//                        } else {
//                            print(error)
//                        }
//                    }
//                }
//                    // Add this to download contents of file
//                else {
//                    // Download contents of file as a string
//                    nlp_directory.file(name: text_file).getString { text, error in
//                        if (error == nil) {
//                            let input = text
//                            // Add the call to the Summarizer algorithm
//                            let summarizer = self.client.algo(algoUri: "nlp/Summarizer/0.1.8")
//                            summarizer.pipe(text: input) { resp, error in
//                                if (error == nil) {
//                                    print(resp.getText())
//                                } else {
//                                    print(error)
//                                }
//                            }
//                        } else {
//                            print(error)
//                        }
//                    }
//                }
//            }
//        }

}
}
