//
//  UserWithPostSource.swift
//  Posts
//
//  Created by Marcin Raburski on 23.05.2016.
//  Copyright © 2016 Rzeczy. All rights reserved.
//

public class UserWithPostSource: Source<UserModel> {
    let post: PostModel
    let usersSource: Source<[UserModel]>
    public init(post: PostModel, usersSource: Source<[UserModel]>) {
        self.post = post
        self.usersSource = usersSource
        super.init()
        self.subscribeSelf(self.usersSource)
    }
    
    override public func getState() -> State<UserModel> {
        switch self.usersSource.state {
        case .loading: return .loading
        case .error(let error): return .error(error: error)
        case .ready(let users):
            if let user = self.usersFilteredWithPost(users, post: self.post) {
                return .ready(data: user)
            } else {
                return .error(error: SourceError.NoDataReturned)
            }
        }
    }
    
    func usersFilteredWithPost(users: [UserModel], post: PostModel) -> UserModel? {
        return users.filter({ (element: UserModel) -> Bool in
            return element.id == post.userId
        }).first
    }
}
