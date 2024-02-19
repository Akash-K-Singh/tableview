import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!

    let fruits = ["Apple", "Banana", "Orange", "Grapes", "Mango", "Apple", "Banana", "Orange", "Grapes", "Mango", "Apple", "Banana", "Orange", "Grapes", "Mango", "Apple", "Banana", "Orange", "Grapes", "Mango"]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }

    // MARK: - UITableViewDataSource methods

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruits.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "fruitCell", for: indexPath)
        cell.textLabel?.text = fruits[indexPath.row]
        return cell
    }
}
