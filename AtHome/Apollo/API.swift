//  This file was automatically generated and should not be edited.

import Apollo

public final class AllModulesQuery: GraphQLQuery {
  public let operationDefinition =
    "query allModules {\n  allModules {\n    __typename\n    id\n    name\n    location\n    type\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("allModules", type: .list(.object(AllModule.selections))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(allModules: [AllModule?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "allModules": allModules.flatMap { (value: [AllModule?]) -> [ResultMap?] in value.map { (value: AllModule?) -> ResultMap? in value.flatMap { (value: AllModule) -> ResultMap in value.resultMap } } }])
    }

    /// returns all the modules as an array
    public var allModules: [AllModule?]? {
      get {
        return (resultMap["allModules"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [AllModule?] in value.map { (value: ResultMap?) -> AllModule? in value.flatMap { (value: ResultMap) -> AllModule in AllModule(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [AllModule?]) -> [ResultMap?] in value.map { (value: AllModule?) -> ResultMap? in value.flatMap { (value: AllModule) -> ResultMap in value.resultMap } } }, forKey: "allModules")
      }
    }

    public struct AllModule: GraphQLSelectionSet {
      public static let possibleTypes = ["Module"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("location", type: .nonNull(.scalar(String.self))),
        GraphQLField("type", type: .nonNull(.scalar(String.self))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID, name: String, location: String, type: String) {
        self.init(unsafeResultMap: ["__typename": "Module", "id": id, "name": name, "location": location, "type": type])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// The unique identifier of the module
      public var id: GraphQLID {
        get {
          return resultMap["id"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      /// The name of the module
      /// Either the default one or
      /// one choosen by the user
      public var name: String {
        get {
          return resultMap["name"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      /// The room where the module is located
      public var location: String {
        get {
          return resultMap["location"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "location")
        }
      }

      /// The type of module, returned as a lower case String
      /// As of now, can be either:
      /// - hygrometer
      /// - thermometer
      /// - luxmeter
      /// - athmospherics
      public var type: String {
        get {
          return resultMap["type"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "type")
        }
      }
    }
  }
}

public final class GetModuleByIdQuery: GraphQLQuery {
  public let operationDefinition =
    "query getModuleById($id: String!) {\n  getModuleById(id: $id) {\n    __typename\n    id\n    name\n    type\n    location\n    samples {\n      __typename\n      date\n      payload\n    }\n  }\n}"

  public var id: String

  public init(id: String) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getModuleById", arguments: ["id": GraphQLVariable("id")], type: .object(GetModuleById.selections)),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(getModuleById: GetModuleById? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "getModuleById": getModuleById.flatMap { (value: GetModuleById) -> ResultMap in value.resultMap }])
    }

    /// Used to retrieve a module's data by its unique identifier.
    public var getModuleById: GetModuleById? {
      get {
        return (resultMap["getModuleById"] as? ResultMap).flatMap { GetModuleById(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "getModuleById")
      }
    }

    public struct GetModuleById: GraphQLSelectionSet {
      public static let possibleTypes = ["Module"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("type", type: .nonNull(.scalar(String.self))),
        GraphQLField("location", type: .nonNull(.scalar(String.self))),
        GraphQLField("samples", type: .nonNull(.list(.object(Sample.selections)))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID, name: String, type: String, location: String, samples: [Sample?]) {
        self.init(unsafeResultMap: ["__typename": "Module", "id": id, "name": name, "type": type, "location": location, "samples": samples.map { (value: Sample?) -> ResultMap? in value.flatMap { (value: Sample) -> ResultMap in value.resultMap } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// The unique identifier of the module
      public var id: GraphQLID {
        get {
          return resultMap["id"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      /// The name of the module
      /// Either the default one or
      /// one choosen by the user
      public var name: String {
        get {
          return resultMap["name"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      /// The type of module, returned as a lower case String
      /// As of now, can be either:
      /// - hygrometer
      /// - thermometer
      /// - luxmeter
      /// - athmospherics
      public var type: String {
        get {
          return resultMap["type"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "type")
        }
      }

      /// The room where the module is located
      public var location: String {
        get {
          return resultMap["location"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "location")
        }
      }

      /// environmental samples gathered by the module.
      /// (see the Sample type)
      /// returned as an array
      public var samples: [Sample?] {
        get {
          return (resultMap["samples"] as! [ResultMap?]).map { (value: ResultMap?) -> Sample? in value.flatMap { (value: ResultMap) -> Sample in Sample(unsafeResultMap: value) } }
        }
        set {
          resultMap.updateValue(newValue.map { (value: Sample?) -> ResultMap? in value.flatMap { (value: Sample) -> ResultMap in value.resultMap } }, forKey: "samples")
        }
      }

      public struct Sample: GraphQLSelectionSet {
        public static let possibleTypes = ["Sample"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("date", type: .nonNull(.scalar(String.self))),
          GraphQLField("payload", type: .nonNull(.scalar(String.self))),
        ]

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(date: String, payload: String) {
          self.init(unsafeResultMap: ["__typename": "Sample", "date": date, "payload": payload])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The date & time the sample was harvested at.
        /// Formatted as such: "YYYY-MM-DD hh:mm:ss.µs"
        /// For example: 2018-01-02 12:56:13.327164
        public var date: String {
          get {
            return resultMap["date"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "date")
          }
        }

        /// The data and metadata  of the samples sent by the module
        public var payload: String {
          get {
            return resultMap["payload"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "payload")
          }
        }
      }
    }
  }
}