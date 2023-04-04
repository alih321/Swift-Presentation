//
//  SectionVC.swift
//  Swift Presentation
//
//  Created by Ali H on 4/2/23.
//

import UIKit

class SectionVC: UIViewController {

    @IBOutlet private weak var tableView: UITableView!
    
    var currentSection: Section!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        navigationItem.title = currentSection.title
        
    }
    

}

extension SectionVC: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return currentSection.details.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "detail_cell", for: indexPath)
        
        let detail = currentSection.details[indexPath.row]
        
        cell.textLabel?.text = detail
        
        return cell
    }
    
    
}
