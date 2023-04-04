//
//  ViewController.swift
//  Swift Presentation
//
//  Created by Ali H on 4/2/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var tableView: UITableView!
    
    private let allSections = SectionManager().allSections
    private var selectedSection: Section?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "section_segue" {
            if let dest = segue.destination as? SectionVC {
                dest.currentSection = selectedSection!
            }
        }
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allSections.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "title_cell", for: indexPath)
        
        cell.textLabel?.text = allSections[indexPath.row].title
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        selectedSection = allSections[indexPath.row]
        performSegue(withIdentifier: "section_segue", sender: self)
    }
    
    
}
