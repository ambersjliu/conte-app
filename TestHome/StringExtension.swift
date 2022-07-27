//
//  StringExtension.swift
//  TestHome
//
//  Created by Swift Admin on 2022-07-27.
//

import Foundation

extension String{
    //get filename
    func fileName()-> String{
        return URL(fileURLWithPath: self).deletingPathExtension().lastPathComponent
    }
    //get file extension
    func fileExtension() -> String{
        return URL(fileURLWithPath: self).pathExtension
    }
}

func readFile(inputFile: String) -> String{
    //split file extension
    let fileExtension = inputFile.fileExtension()

    let fileName = inputFile.fileName()
    
    //get file url
    let fileURL = try! FileManager.default.url(for: .desktopDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
    
    let inputFile = fileURL.appendingPathComponent(fileName).appendingPathExtension(fileExtension)
    
    do{
        let savedData = try String(contentsOf:inputFile)
        return savedData
    }catch{
        return error.localizedDescription
    }
}


