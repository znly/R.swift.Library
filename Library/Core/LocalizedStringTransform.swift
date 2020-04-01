import Foundation

/// Registered singleton-based function type that transforms
/// every localizedString produced by the library.
///
/// Usage:
/// - Register a transform: `LocalizedStringTransform.register { $0.localizedUppercase }`
/// to have all localized strings uppercased.
/// - Return to non-mutating mode: `LocalizedStringTransform.register(.identity)`
///
/// Remarks:
/// - only one transform can be registered at a time
/// - registration should happen at app init time, thread safety is not guaranteed
///
public struct LocalizedStringTransform {
  static var current: LocalizedStringTransform = .identity

  private let transform: (String) -> String

  private init(transform: @escaping (String) -> String) {
    self.transform = transform
  }

  func apply(_ input: String) -> String {
    return transform(input)
  }
}

public extension LocalizedStringTransform {
  static let `identity` = LocalizedStringTransform { $0 }

  static func register(_ transform: @escaping (String) -> String) {
    current = LocalizedStringTransform(transform: transform)
  }

  static func register(_ transform: LocalizedStringTransform) {
    current = transform
  }
}
