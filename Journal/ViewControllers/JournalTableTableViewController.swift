//
//  JournalTableTableViewController.swift
//  Journal
//
//  Created by Nureddin Elmas on 2021-11-25.
//

import UIKit

class JournalTableTableViewController: UITableViewController {

    let newEntrySegeuId = "createJournalEntry"
    let journalEntrySegeuId = "showJournalEntry"
    let cellidentity = "JournalEntryCell"
    
    var journal = Journal()

//    var journalEntries = [JournalEntry]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        journal.add(entry: JournalEntry(content: "Åt mat"))
        journal.add(entry: JournalEntry(content: "Sov"))
        
//        journalEntries.append(JournalEntry(content: "Åt mat"))
//        journalEntries.append(JournalEntry(content: "Hello"))
    }

    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {

        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return journal.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellidentity, for: indexPath)

        let journalEntry = journal.entry(index: indexPath.row)
        cell.textLabel?.text = journalEntry?.content
//        cell.textLabel?.text = journalEntries[indexPath.row].content
        
        return cell
    }
   

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
        if segue.identifier == newEntrySegeuId {
            let destionationVC = segue.destination as? NewJournalViewController
            
            destionationVC?.journal = journal
        }
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
