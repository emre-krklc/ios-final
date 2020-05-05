

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
  
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {      //Uygulama arkaplan a atıldığında very kaybetmeden kaldığı yerden devam etmesi için bu event  kullandık
        
        
    }

    func applicationDidEnterBackground(_ application: UIApplication) {     //Arkaplan da sürdürülebilirlik özelliği
        
    }

    func applicationWillEnterForeground(_ application: UIApplication) {  //Arka plandan etkin olmayan duruma geçişin bir parçası olarak çağrılır; burada arka plana girerken yapılan değişikliklerin çoğunu geri alabiliriz.
        
        }

    func applicationDidBecomeActive(_ application: UIApplication) {   //Uygulama etkin değilken isteğe bağlı olarak kullanıcı arabirimlerini yenileme özelliği
        
        
    }

    func applicationWillTerminate(_ application: UIApplication) {  //Uygulama sonlandırılırken verileri kaydeder.
        
    }
    



}

