import UIKit
import SnapKit
//import Sentry

class ListViewController: UITableViewController {

    let kCellIdentifier = "CellIdentifier"
    let demos = ["Basic UIScrollView"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "iOS Demo"
        
        self.tableView?.register(UITableViewCell.self, forCellReuseIdentifier: kCellIdentifier)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        demos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: kCellIdentifier)! as UITableViewCell
        
        cell.textLabel?.text = demos[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let viewController = BasicUIScrollViewController()
        navigationController?.pushViewController(viewController, animated: true)
    }
}
