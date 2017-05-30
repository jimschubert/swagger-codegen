//
// UserAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class UserAPI: APIBase {
    /**
     Create user
     
     - parameter body: (body) Created user object 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createUser(body: User, completion: @escaping ((_ error: ErrorResponse?) -> Void)) {
        createUserWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error)
        }
    }


    /**
     Create user
     - POST /user
     - This can only be done by the logged in user.
     
     - parameter body: (body) Created user object 

     - returns: RequestBuilder<Void> 
     */
    open class func createUserWithRequestBuilder(body: User) -> RequestBuilder<Void> {
        let path = "/user"
        let URLString = PetstoreClientAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = PetstoreClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Creates list of users with given input array
     
     - parameter body: (body) List of user object 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createUsersWithArrayInput(body: [User], completion: @escaping ((_ error: ErrorResponse?) -> Void)) {
        createUsersWithArrayInputWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error)
        }
    }


    /**
     Creates list of users with given input array
     - POST /user/createWithArray
     - 
     
     - parameter body: (body) List of user object 

     - returns: RequestBuilder<Void> 
     */
    open class func createUsersWithArrayInputWithRequestBuilder(body: [User]) -> RequestBuilder<Void> {
        let path = "/user/createWithArray"
        let URLString = PetstoreClientAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = PetstoreClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Creates list of users with given input array
     
     - parameter body: (body) List of user object 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createUsersWithListInput(body: [User], completion: @escaping ((_ error: ErrorResponse?) -> Void)) {
        createUsersWithListInputWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error)
        }
    }


    /**
     Creates list of users with given input array
     - POST /user/createWithList
     - 
     
     - parameter body: (body) List of user object 

     - returns: RequestBuilder<Void> 
     */
    open class func createUsersWithListInputWithRequestBuilder(body: [User]) -> RequestBuilder<Void> {
        let path = "/user/createWithList"
        let URLString = PetstoreClientAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = PetstoreClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Delete user
     
     - parameter username: (path) The name that needs to be deleted 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteUser(username: String, completion: @escaping ((_ error: ErrorResponse?) -> Void)) {
        deleteUserWithRequestBuilder(username: username).execute { (response, error) -> Void in
            completion(error)
        }
    }


    /**
     Delete user
     - DELETE /user/{username}
     - This can only be done by the logged in user.
     
     - parameter username: (path) The name that needs to be deleted 

     - returns: RequestBuilder<Void> 
     */
    open class func deleteUserWithRequestBuilder(username: String) -> RequestBuilder<Void> {
        var path = "/user/{username}"
        path = path.replacingOccurrences(of: "{username}", with: "\(username)", options: .literal, range: nil)
        let URLString = PetstoreClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = PetstoreClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get user by user name
     
     - parameter username: (path) The name that needs to be fetched. Use user1 for testing.  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getUserByName(username: String, completion: @escaping ((_ data: User?, _ error: ErrorResponse?) -> Void)) {
        getUserByNameWithRequestBuilder(username: username).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get user by user name
     - GET /user/{username}
     - 
     - examples: [{contentType=application/xml, example=<User>
  <id>123456789</id>
  <username>aeiou</username>
  <firstName>aeiou</firstName>
  <lastName>aeiou</lastName>
  <email>aeiou</email>
  <password>aeiou</password>
  <phone>aeiou</phone>
  <userStatus>123</userStatus>
</User>}, {contentType=application/json, example={
  "firstName" : "aeiou",
  "lastName" : "aeiou",
  "password" : "aeiou",
  "userStatus" : 6,
  "phone" : "aeiou",
  "id" : 0,
  "email" : "aeiou",
  "username" : "aeiou"
}}]
     - examples: [{contentType=application/xml, example=<User>
  <id>123456789</id>
  <username>aeiou</username>
  <firstName>aeiou</firstName>
  <lastName>aeiou</lastName>
  <email>aeiou</email>
  <password>aeiou</password>
  <phone>aeiou</phone>
  <userStatus>123</userStatus>
</User>}, {contentType=application/json, example={
  "firstName" : "aeiou",
  "lastName" : "aeiou",
  "password" : "aeiou",
  "userStatus" : 6,
  "phone" : "aeiou",
  "id" : 0,
  "email" : "aeiou",
  "username" : "aeiou"
}}]
     
     - parameter username: (path) The name that needs to be fetched. Use user1 for testing.  

     - returns: RequestBuilder<User> 
     */
    open class func getUserByNameWithRequestBuilder(username: String) -> RequestBuilder<User> {
        var path = "/user/{username}"
        path = path.replacingOccurrences(of: "{username}", with: "\(username)", options: .literal, range: nil)
        let URLString = PetstoreClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<User>.Type = PetstoreClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Logs user into the system
     
     - parameter username: (query) The user name for login 
     - parameter password: (query) The password for login in clear text 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func loginUser(username: String, password: String, completion: @escaping ((_ data: String?, _ error: ErrorResponse?) -> Void)) {
        loginUserWithRequestBuilder(username: username, password: password).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Logs user into the system
     - GET /user/login
     - 
     - responseHeaders: [X-Rate-Limit(Int32), X-Expires-After(Date)]
     - responseHeaders: [X-Rate-Limit(Int32), X-Expires-After(Date)]
     - examples: [{contentType=application/xml, example=aeiou}, {contentType=application/json, example="aeiou"}]
     - examples: [{contentType=application/xml, example=aeiou}, {contentType=application/json, example="aeiou"}]
     
     - parameter username: (query) The user name for login 
     - parameter password: (query) The password for login in clear text 

     - returns: RequestBuilder<String> 
     */
    open class func loginUserWithRequestBuilder(username: String, password: String) -> RequestBuilder<String> {
        let path = "/user/login"
        let URLString = PetstoreClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "username": username, 
            "password": password
        ])
        

        let requestBuilder: RequestBuilder<String>.Type = PetstoreClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Logs out current logged in user session
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func logoutUser(completion: @escaping ((_ error: ErrorResponse?) -> Void)) {
        logoutUserWithRequestBuilder().execute { (response, error) -> Void in
            completion(error)
        }
    }


    /**
     Logs out current logged in user session
     - GET /user/logout
     - 

     - returns: RequestBuilder<Void> 
     */
    open class func logoutUserWithRequestBuilder() -> RequestBuilder<Void> {
        let path = "/user/logout"
        let URLString = PetstoreClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = PetstoreClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Updated user
     
     - parameter username: (path) name that need to be deleted 
     - parameter body: (body) Updated user object 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateUser(username: String, body: User, completion: @escaping ((_ error: ErrorResponse?) -> Void)) {
        updateUserWithRequestBuilder(username: username, body: body).execute { (response, error) -> Void in
            completion(error)
        }
    }


    /**
     Updated user
     - PUT /user/{username}
     - This can only be done by the logged in user.
     
     - parameter username: (path) name that need to be deleted 
     - parameter body: (body) Updated user object 

     - returns: RequestBuilder<Void> 
     */
    open class func updateUserWithRequestBuilder(username: String, body: User) -> RequestBuilder<Void> {
        var path = "/user/{username}"
        path = path.replacingOccurrences(of: "{username}", with: "\(username)", options: .literal, range: nil)
        let URLString = PetstoreClientAPI.basePath + path
        let parameters = body.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = PetstoreClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
