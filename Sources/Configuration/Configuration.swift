import Foundation

public enum Configuration {
    public enum Error: Swift.Error, Equatable, LocalizedError {
        case missingKey, invalidValue
        
        public var errorDescription: String? {
            switch self {
            case .missingKey: return "The key is missing from the config file."
            case .invalidValue: return "The decoded value is of the wrong type."
            }
        }
    }
    
    public static func value<T>(forKey key: String) throws -> T where T: LosslessStringConvertible {
        guard let object = Bundle.main.object(forInfoDictionaryKey: key) else { throw Error.missingKey }
        
        switch object {
        case let value as T:
            return value
        case let string as String:
            guard let value = T(string) else { fallthrough }
            return value
        default:
            throw Error.invalidValue
        }
    }
    
}

