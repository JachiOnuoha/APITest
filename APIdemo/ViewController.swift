//
//  ViewController.swift
//  APIdemo
//
//  Created by Jachimike Onuoha on 7/13/19.
//  Copyright © 2019 Jachimike Onuoha. All rights reserved.
//

import UIKit
import algorithmia
import Alamofire
import SwiftyJSON
class ViewController: UIViewController {
    
    @IBOutlet weak var GifView: UIImageView!
    
    override func viewDidLoad() {
            super.viewDidLoad()
        GifView.loadGif(name: "samurai")
        var result:String = ""
        
//        let file = "um.rtf"
//
//        let contents = "anything..."
//
//        let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
//
//        print(dir)
//
//        let fileURL = dir.appendingPathComponent(file)
//
//        print(fileURL)
//
//        do{
//
//            try contents.write(to: fileURL, atomically: false, encoding: .utf8)
//
//
//
//        }
//
//        catch{
//
//            print("Error:\(error)")
//
        
                   // Reads text file into string named document
//            if let filer = Bundle.main.path(forResource: "jack_london", ofType: "txt") {
//                do {
//                    let document = try String(contentsOfFile: filer)
//
//                    // Calls MeaningCloud API on the string
//                    var request = URLRequest(url: URL(string: "https://api.meaningcloud.com/summarization-1.0")!)
//                    request.httpMethod = "POST"
//                    request.httpBody = "key=b001e406c6b0310910ff2ddaf4d63b3a&txt=\(document)&sentences=5".data(using: .utf8)  //try? JSONSerialization.data(withJSONObject: params, options: [])
//                    request.addValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
//
//                    let session = URLSession.shared
//                    let task = session.dataTask(with: request, completionHandler: { data, response, error -> Void in
//                        print(response!)
//                        do {
//                            let json = try JSONSerialization.jsonObject(with: data!) as! Dictionary<String, AnyObject>
//                            print("============================================================ \n")
//                            print("             MEANINGCLOUD RESPONSE STARTS HERE               \n")
//
//                            result = json["summary"] as? String ?? "Something didn't work"
//                            print(json)
//                        } catch {
//                            print("error")
//                        }
//                    })
//
//                    task.resume()
//                    }
//                 catch {
//                    print("Whats happened")
//                }
//            }
//                else {
//                print("Nani")
//            }
       // print(result!)
//            // End of Meaning cloud operation
//
//
//        var fileName: String = "First Doc"
//        let fileURL = Bundle.main.url(forResource: "Github-Project Boards", withExtension: "pdf")
//        guard let data = NSData(contentsOf: fileURL!)
//            else{
//                return
//        }
//        let endpoint = "https://api.zamzar.com/v1/jobs"
//        let api_key = "772f5625451d98c47445a5aad794f30982e0d433"
//        let password = ""
//        let target_format = "rtf"
//        let loginString = "\(api_key):\(password)"
//        let url = "https://www.hakaimagazine.com/wp-content/uploads/header-gulf-birds.jpg"
//
//
//
//        // HTTP Basic Auth Username and Password login credentials
//        guard let loginData = loginString.data(using: String.Encoding.utf8) else {
//            return
//        }
//        let base64LoginString = loginData.base64EncodedString()
//
//        // Headers
//        let header: HTTPHeaders = [
//            "Content-Type" : "application/x-www-form-urlencoded",
//            "Authorization": "Basic \(base64LoginString)"
//        ]
//
//
//        Alamofire.upload(
//            multipartFormData: { multipartFormData in
//                multipartFormData.append("\(target_format)".data(using: String.Encoding.utf8, allowLossyConversion: false)!, withName: "target_format")
//                multipartFormData.append(fileURL!, withName: "source_file")
//                //multipartFormData.append(url.data(using: String.Encoding.utf8)!, withName: "url", fileName: fileName, mimeType: "image/jpeg")
//        },
//            to: "\(endpoint)", method: .post, headers: header, encodingCompletion: { encodingResult in switch encodingResult {
//            case .success(let upload, _, _):
//                upload.responseJSON { response in
//                    //self.delegate?.showSuccessAlert()
//                    print(response.request!)  // original URL request
//                    print(response.response!) // URL response
//                    print(response.data!)     // server data
//                    print(response.result)   // result of response serialization
//                    //                        self.showSuccesAlert()
//
//                    if let JSON = response.result.value {
//                        print("JSON: \(JSON)")
//                    }
//                }
//                upload.responseJSON { response in
//                }
//            case .failure(let encodingError):
//                print(encodingError)
//                }
//
//
//        })
        
        
        
        //
        
        
        // HTTP Basic Auth Username and Password login credentials
        let endpoint = "https://api.zamzar.com/v1/files/53174614/content"
        let api_key = "772f5625451d98c47445a5aad794f30982e0d433"
        let password = ""
        let loginString = "\(api_key):\(password)"
        
        guard let loginData = loginString.data(using: String.Encoding.utf8) else {
            return
        }
        let base64LoginString = loginData.base64EncodedString()
        
        // Headers
        let header: HTTPHeaders = [
            "Content-Type" : "application/x-www-form-urlencoded",
            "Authorization": "Basic \(base64LoginString)",
            "Accept": "application/pdf"
        ]
        
        let parameters = ["stream":true]
        
        
//        let fileManager = FileManager()
//        let dpUrl = "https://api.zamzar.com/v1/files/15/content"
//        let pathComponent = "SomethingNew.pdf"
//        let directoryURL: URL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
//        let folderPath: URL = directoryURL.appendingPathComponent("Desktop", isDirectory: true)
//        let fileURL: URL = folderPath.appendingPathComponent(pathComponent)
//        let destinationURLForFile = fileURL
//
//        let destination: DownloadRequest.DownloadFileDestination = { _, _ in
//            return (fileURL, [.removePreviousFile, .createIntermediateDirectories])
//        }
//        let parameters: Parameters = ["stream": true]
//
//        Alamofire.download(dpUrl, method: .get, parameters: parameters, encoding: JSONEncoding.default, headers: header, to: destination)
//            .downloadProgress(queue: DispatchQueue.global(qos: .utility)) { progress in
//                print("Progress: \(progress.fractionCompleted)")
//                print()
//            }
//            .responseJSON { response in
//                if let statusCode = response.response?.statusCode, statusCode == 200 {
//                    let pdfUrl = URL(fileURLWithPath: destinationURLForFile.path)
//                    let requestObj = NSURLRequest(url: pdfUrl as URL)
//                }
//                return
//        }
        
        
        func fileSave(content: String) {
            let activityController = UIActivityViewController(activityItems: [content], applicationActivities: nil)
            
            self.present(activityController, animated: true, completion: nil)
        }
        
        
        //Lists all the jobs done with the API
       // let fileManager = FileManager()
        let pathComponent = "test.rtf"
        let directoryURL: URL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        let folderPath: URL = directoryURL.appendingPathComponent("Documents", isDirectory: true)
        let fileURL: URL = folderPath.appendingPathComponent(pathComponent)
        let destinationURLForFile = fileURL
        
        let destination: DownloadRequest.DownloadFileDestination = { _, _ in
            var documentsURL =  destinationURLForFile// FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
            return (documentsURL, [.removePreviousFile, .createIntermediateDirectories])
        }
        
        Alamofire.download(endpoint, method: .get, headers: header).downloadProgress(closure: {(prog) in }).responseString{
            response in
                if let statusCode = response.response?.statusCode, statusCode == 200 {
                    let content = response.result.value
                    let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
                    let file = "Anna.rtf"
                    print(dir)
                    
                    let fileURL = dir.appendingPathComponent(file)
                    do {
                        print(fileURL)
                        try content?.write(to: fileURL, atomically: false, encoding: .utf8)
                    }
                    catch {
                        print("meh, its wrong :(")
                    }
                    
                    
//                    let pdfUrl = URL(fileURLWithPath: destinationURLForFile.path)
//                    let requestObj = NSURLRequest(url: pdfUrl as URL)
//                    print(response.result.value)
//                    print(response.error)
                }
                return
        }
        
        
        
        
        
        
        
        
    }
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

    
    func dummy(_ para:String)->String{
        return para
    }

