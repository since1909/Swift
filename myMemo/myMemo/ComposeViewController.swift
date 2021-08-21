//
//  ComposeViewController.swift
//  myMemo
//
//  Created by 박지원 on 2021/08/20.
//

import UIKit

class ComposeViewController: UIViewController {
    @IBOutlet var memoTextView: UITextView!
    @IBAction func close(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func save(_ sender: Any) {
        let memo = memoTextView.text
        
        //let newMemo = Memo(content: memo ?? "")
        //Memo.dummyMemoList.append(newMemo)
        
        DataManager.shared.addNewMemo(memo)
        
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
