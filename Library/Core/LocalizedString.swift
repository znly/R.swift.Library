import Foundation

// Wrappers around StringResourceType to handle Localized String with Format

public struct LocalizedStringNoArg {
  public let resource: StringResourceType

  public init(resource: StringResourceType) {
    self.resource = resource
  }

  public func callAsFunction() -> String {
    _translated()
  }

  public func translated() -> String {
    _translated()
  }

  private func _translated() -> String {
    let localized = resource.translated()
    return LocalizedStringTransform.current.apply(localized)
  }
}

public struct LocalizedStringOneArg<T: CVarArg> {
  public let resource: StringResourceType

  public init(resource: StringResourceType) {
    self.resource = resource
  }

  public func callAsFunction(_ arg: T) -> String {
    _translated(arg)
  }

  public func translated(_ arg: T) -> String {
    _translated(arg)
  }

  private func _translated(_ arg: T) -> String {
    let localized = String.localizedStringWithFormat(resource.translated(), arg)
    return LocalizedStringTransform.current.apply(localized)
  }
}

public struct LocalizedStringTwoArgs<T: CVarArg, U: CVarArg> {
  public let resource: StringResourceType

  public init(resource: StringResourceType) {
    self.resource = resource
  }

  public func callAsFunction(_ arg1: T, _ arg2: U) -> String {
    _translated(arg1, arg2)
  }

  public func translated(_ arg1: T, _ arg2: U) -> String {
    _translated(arg1, arg2)
  }

  private func _translated(_ arg1: T, _ arg2: U) -> String {
    let localized = String.localizedStringWithFormat(resource.translated(), arg1, arg2)
    return LocalizedStringTransform.current.apply(localized)
  }
}

public struct LocalizedStringThreeArgs<T: CVarArg, U: CVarArg, V: CVarArg> {
  public let resource: StringResourceType

  public init(resource: StringResourceType) {
    self.resource = resource
  }

  public func callAsFunction(_ arg1: T, _ arg2: U, _ arg3: V) -> String {
    _translated(arg1, arg2, arg3)
  }

  public func translated(_ arg1: T, _ arg2: U, _ arg3: V) -> String {
    _translated(arg1, arg2, arg3)
  }

  private func _translated(_ arg1: T, _ arg2: U, _ arg3: V) -> String {
    let localized = String.localizedStringWithFormat(resource.translated(), arg1, arg2, arg3)
    return LocalizedStringTransform.current.apply(localized)
  }
}

public struct LocalizedStringFourArgs<T: CVarArg, U: CVarArg, V: CVarArg, W: CVarArg> {
  public let resource: StringResourceType

  public init(resource: StringResourceType) {
    self.resource = resource
  }

  public func callAsFunction(_ arg1: T, _ arg2: U, _ arg3: V, _ arg4: W) -> String {
    _translated(arg1, arg2, arg3, arg4)
  }

  public func translated(_ arg1: T, _ arg2: U, _ arg3: V, _ arg4: W) -> String {
    _translated(arg1, arg2, arg3, arg4)
  }

  private func _translated(_ arg1: T, _ arg2: U, _ arg3: V, _ arg4: W) -> String {
    let localized = String.localizedStringWithFormat(resource.translated(), arg1, arg2, arg3, arg4)
    return LocalizedStringTransform.current.apply(localized)
  }
}

public struct LocalizedStringFiveArgs<T: CVarArg, U: CVarArg, V: CVarArg, W: CVarArg, X: CVarArg> {
  public let resource: StringResourceType

  public init(resource: StringResourceType) {
    self.resource = resource
  }

  public func callAsFunction(_ arg1: T, _ arg2: U, _ arg3: V, _ arg4: W, _ arg5: X) -> String {
    _translated(arg1, arg2, arg3, arg4, arg5)
  }

  public func translated(_ arg1: T, _ arg2: U, _ arg3: V, _ arg4: W, _ arg5: X) -> String {
    _translated(arg1, arg2, arg3, arg4, arg5)
  }

  private func _translated(_ arg1: T, _ arg2: U, _ arg3: V, _ arg4: W, _ arg5: X) -> String {
    let localized = String.localizedStringWithFormat(resource.translated(), arg1, arg2, arg3, arg4, arg5)
    return LocalizedStringTransform.current.apply(localized)
  }
}
