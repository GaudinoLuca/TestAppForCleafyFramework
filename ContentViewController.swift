//
//  ContentViewController.swift
//  TestAppForFramework (iOS)
//
//  Created by Luca Gaudino on 19/12/21.
//

import Foundation
import CleafyChallengeFramework


class ContentViewController {
    var MyChallengeFramework: CleafyChallenge
    var result: Result<[StargazerUser], ErrorModel>?
    var stringResult: String?
    
    init(){
        self.MyChallengeFramework = CleafyChallenge()
        self.MyChallengeFramework.getStargazer(owner: "octocat", repo: "hello-world") { result in
            self.result = result
            switch result {
            case Result.success(let response):
                self.stringResult = "\(response.count) stargazers recuperati."
                break
            case Result.failure(let error):
                self.stringResult = error.messageKey
                break
            }
        }
    }
}
