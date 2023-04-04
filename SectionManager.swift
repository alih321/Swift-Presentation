//
//  SectionManager.swift
//  Swift Presentation
//
//  Created by Ali H on 4/2/23.
//

import Foundation


class SectionManager {
    
    let allSections: [Section] = [
        Section(title: "What Is it?",
                details: [
                    "Swift is a general-purpose, compiled programming language developed by Apple for macOS, iOS, watchOS, and tvOS.",
                    
                          "It is designed to be safe, fast, and modern, with features like optionals, closures, type inference, and memory management.",
                    
                          "Swift is open-source and has a growing community of developers who contribute to its development and build libraries and frameworks for various use cases."
                ]),
        
        Section(title: "The History",
                details: [
                    "Development began in July 2010 by Chris Lattner",
                    "1.0 release in September 9, 2014",
                    "Originally proprietary until version 2.2 it became open-source",
                    "2018 Swift surpassed Objective-C in measured popularity",
                    "Latest release is 5.7.3 on January 19, 2023"
                ]),
        
        Section(title: "The IDE: XCODE",
                details: [
                    "Has the Swift Compiler",
                    "Has Apple device simulators for testing purposes",
                    "Can distribute applications directly to the App Store",
                    "The IDE only runs on Apple OS",
                    "Objective-C runtime library, which allows C, Objective-C, C++ and Swift code to run within one program."
                ]),
        
        
        Section(title: "Optionals",
                details: [
                    "Optionals in Swift are a type that represents a value that may or may not exist.",
                    
                          "They are denoted with a question mark (?) after the type of the variable or constant.",
                    
                          "Optionals can be used to handle situations where a value may not be present, such as when working with user input or when retrieving data from a database or API."
                ]),
        
        Section(title: "Careers",
                details: [
                    "Because Swift and Objective C are the only languages that work with Apple’s environment, any careers involving Mobile App Development will require knowledge in Swift.",
                    
                    "Companies like Wells Fargo, Chewy, and Fidelity Investments are all currently hiring Swift Developers",
                    
                    "According to Glassdoor, the average salary for a Swift developer is $118,000 in the United States",
                    
                    "Salaries have increased 10% for ios developers in the last 5 years",
                    
                    "Projected job growth for ios developers is 21% from 2018-2028",
                    
                    "There are 237,714 active ios developer job openings in the US based on job postings"
                ])
    ]

    
}
