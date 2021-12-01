//
//  NewJournalViewController.swift
//  Journal
//
//  Created by Nureddin Elmas on 2021-11-25.
//

import UIKit

class NewJournalViewController: UIViewController {
    var journal: Journal?
    @IBOutlet weak var journalEntryTextView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func save(_ sender: UIBarButtonItem) {
        if let entryText = journalEntryTextView.text{
            let newJournalEntry = JournalEntry(content: entryText)
            journal?.add(entry: newJournalEntry)
        }
        
    }
}
