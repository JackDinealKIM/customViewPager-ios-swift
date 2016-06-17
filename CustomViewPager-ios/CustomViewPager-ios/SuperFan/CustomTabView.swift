
import UIKit

class CustomTabView: UIView {

    @IBOutlet var discoverView: UIView!
    @IBOutlet var myStarView: UIView!
    @IBOutlet var playListView: UIView!
    @IBOutlet var levelView: UIView!
    
    var rootViewController:RootViewController!
    
    func initContentView(rootViewController:RootViewController) {
        self.rootViewController = rootViewController
        
        tabChangeAction(0)
        
        discoverView.addGestureRecognizer(UITapGestureRecognizer(target:self, action:#selector(discoverViewClick)))
        myStarView.addGestureRecognizer(UITapGestureRecognizer(target:self, action:#selector(myStarViewClick)))
        playListView.addGestureRecognizer(UITapGestureRecognizer(target:self, action:#selector(playListViewClick)))
        levelView.addGestureRecognizer(UITapGestureRecognizer(target:self, action:#selector(levelViewClick)))
    }
    
    func tabChangeAction(page:Int) {
        discoverView.backgroundColor = UIColor.blueColor()
        myStarView.backgroundColor = UIColor.blueColor()
        playListView.backgroundColor = UIColor.blueColor()
        levelView.backgroundColor = UIColor.blueColor()
        
        switch page {
        case 0:
            discoverView.backgroundColor = UIColor.brownColor()
            break
        case 1:
            myStarView.backgroundColor = UIColor.brownColor()
            break
        case 2:
            playListView.backgroundColor = UIColor.brownColor()
            break
        case 3:
            levelView.backgroundColor = UIColor.brownColor()
            break
        default :
            break
        }
    }
    
    func discoverViewClick() {
        self.rootViewController.pageChange(0)

    }
    
    func myStarViewClick() {
        self.rootViewController.pageChange(1)
    }
    
    func playListViewClick() {
        self.rootViewController.pageChange(2)
    }
    
    func levelViewClick() {
        self.rootViewController.pageChange(3)
    }
    

    
}
