import Foundation

// Wrappers around StringResourceType to handle Localized String with Format

public struct LocalizedStringNoArg {
  public let resource: StringResourceType

  public init(resource: StringResourceType) {
    self.resource = resource
  }

  public func translated() -> String {
    return resource.translated()
  }
}

public struct LocalizedStringOneArg<T: CVarArg> {
  public let resource: StringResourceType

  public init(resource: StringResourceType) {
    self.resource = resource
  }

  public func translated(_ arg: T) -> String {
    return String.localizedStringWithFormat(resource.translated(), arg)
  }
}

public struct LocalizedStringTwoArgs<T: CVarArg, U: CVarArg> {
  public let resource: StringResourceType

  public init(resource: StringResourceType) {
    self.resource = resource
  }

  public func translated(_ arg1: T, _ arg2: U) -> String {
    return String.localizedStringWithFormat(resource.translated(), arg1, arg2)
  }
}

public struct LocalizedStringThreeArgs<T: CVarArg, U: CVarArg, V: CVarArg> {
  public let resource: StringResourceType

  public init(resource: StringResourceType) {
    self.resource = resource
  }

  public func translated(_ arg1: T, _ arg2: U, _ arg3: V) -> String {
    return String.localizedStringWithFormat(resource.translated(), arg1, arg2, arg3)
  }
}

public struct LocalizedStringFourArgs<T: CVarArg, U: CVarArg, V: CVarArg, W: CVarArg> {
  public let resource: StringResourceType

  public init(resource: StringResourceType) {
    self.resource = resource
  }

  public func translated(_ arg1: T, _ arg2: U, _ arg3: V, _ arg4: W) -> String {
    return String.localizedStringWithFormat(resource.translated(), arg1, arg2, arg3, arg4)
  }
}

public struct LocalizedStringFiveArgs<T: CVarArg, U: CVarArg, V: CVarArg, W: CVarArg, X: CVarArg> {
  public let resource: StringResourceType

  public init(resource: StringResourceType) {
    self.resource = resource
  }

  public func translated(_ arg1: T, _ arg2: U, _ arg3: V, _ arg4: W, _ arg5: X) -> String {
    return String.localizedStringWithFormat(resource.translated(), arg1, arg2, arg3, arg4, arg5)
  }
}
