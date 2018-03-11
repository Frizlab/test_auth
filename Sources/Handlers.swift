//
//  Handlers.swift
//  Perfect-Authentication
//
//  Created by Jonathan Guthrie on 2017-01-23.
//
//

import Foundation
import PerfectHTTP
import PerfectCrypto
import OAuth2
import PerfectSession



class Handlers {
	
	static func main(data: [String:Any]) throws -> RequestHandler {
		return {
			request, response in
			var context: [String : Any] = ["sessionID": request.session?.token ?? ""]
			
			if let i = request.session?.userid, !i.isEmpty { context["authenticated"] = true }
			
			if let i = request.session?.userid { context["userID"] = i }
			if let i = request.session?.data["loginType"] { context["loginType"] = i }
			if let i = request.session?.data["accessToken"] { context["accessToken"] = i }
			if let i = request.session?.data["firstName"] { context["firstName"] = i }
			if let i = request.session?.data["lastName"] { context["lastName"] = i }
			if let i = request.session?.data["picture"] { context["picture"] = i }
			
			response.render(template: "templates/index", context: context)
		}
	}
	
	static func cont(data: [String:Any]) throws -> RequestHandler {
		return {
			request, response in
			var context: [String : Any] = ["sessionID": request.session?.token ?? ""]
			
			if let i = request.session?.userid, !i.isEmpty { context["authenticated"] = true }
			
			response.render(template: "templates/index", context: context)
		}
	}
	
	public static func logout(data: [String:Any]) throws -> RequestHandler {
		return {
			request, response in
			if let _ = request.session?.token {
				MemorySessions.destroy(request, response)
				request.session = PerfectSession() // wipe clean
				response.request.session = PerfectSession() // wipe clean
			}
			response.redirect(path: "/")
		}
	}
	
}
