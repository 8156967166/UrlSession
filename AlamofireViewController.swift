import UIKit
import Alamofire
import Kingfisher

class AlamofireViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    
    let url = "https://jsonplaceholder.typicode.com/photos"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getData()
    }
    
    func getData() {
        AF.request(url, method: .get).responseJSON { response in
            switch response.result {
                
            case .success(let sucess):
                print(sucess)
                if let data = sucess as? [[String: Any]] {
//                    print(data)
                    if let subData = data[1] as? [String: Any] {
                        self.image.kf.setImage(with: URL(string: subData["thumbnailUrl"] as! String))
                    }
                    for i in data {
                        print(" ----> \(i["title"] ?? "")")
                    }
                }
            case .failure(_):
                print("Error")
            }
        }
    }
}
