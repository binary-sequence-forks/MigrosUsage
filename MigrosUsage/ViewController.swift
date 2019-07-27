//  ViewController.swift

import UIKit
import KeychainSwift

class ViewController: UIViewController {
	@IBOutlet weak var removeCredentialsButton: UIButton?
	@IBAction func removeCredentials(sender: UIButton) {
		let keychain = KeychainSwift()
		keychain.clear()
	}
	
	override func viewDidAppear(_ animated: Bool) {
		let keychain = KeychainSwift()
		if let _ = keychain.get("username") {
			print("found username")
			return
		}
		print("username does not exist in keychain")
		self.performSegue(withIdentifier: "gotoLogin", sender:self)
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
	}


}

