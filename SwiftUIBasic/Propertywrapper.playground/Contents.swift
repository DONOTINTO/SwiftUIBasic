import UIKit

enum UserDefaultsManager {
    
    enum Key: String {
        case email
        case nickname
        case phone
    }
    
    static var email = JackDefaults(key: Key.email.rawValue, defaultValue: "이메일 없음")
    
    static var nickname = JackDefaults(key: Key.nickname.rawValue, defaultValue: false)
    
    static var phone = JackDefaults(key: Key.phone.rawValue, defaultValue: "번호 없음")
}

struct JackDefaults<T> {
    let key: String
    let defaultValue: T
    
    var wrappedValue: T {
        get {
            UserDefaults.standard.object(forKey: key) as? T ?? defaultValue
        }
        set {
            UserDefaults.standard.set(newValue, forKey: key)
        }
    }
}

print(UserDefaultsManager.nickname.wrappedValue)
UserDefaultsManager.nickname.wrappedValue = true
print(UserDefaultsManager.nickname.wrappedValue)


@propertyWrapper
struct Decimal {
    
    var defaultValue: String
    var projectedValue = ""
    
    var wrappedValue: String {
        get {
            defaultValue
        }
        set {
            let result = Int(newValue)!.formatted()
            defaultValue = "\(result)원"
            projectedValue = "이체할 금액은 총 \(result)원 입니다."
        }
    }
}

struct Example {
    
    @Decimal(defaultValue: "0원")
    var number
}

var a = Example()
a.number
a.number = "1111"
a.$number
