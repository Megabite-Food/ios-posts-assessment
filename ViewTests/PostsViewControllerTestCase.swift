//
//  PostsViewControllerTestCase.swift
//  Posts
//
//  Created by Marcin Raburski on 09.06.2016.
//  Copyright © 2016 Rzeczy. All rights reserved.
//

import XCTest
import Application
import View
import Domain

class PostsViewControllerTestCase: ViewTests {
    let posts = [
        PostModel(id: 1, userId: 1, title: "Siemka1", body: "Siemanko"),
        PostModel(id: 2, userId: 1, title: "Siemka2", body: "Siemanko2")
    ]
    
    func setUpWithViewModel(viewModel: PostsViewModel) {
        let view = PostsViewController(input: viewModel)
        super.setUpNavigationController(view)
    }

    func testRendersPosts() {
        let postsSource = Source(state: State.ready(data: self.posts))
        let viewModel = PostsViewModel(posts: postsSource, showDetail: Interactor<PostModel, Any>())
        self.setUpWithViewModel(viewModel)
        
        self.tester().waitForViewsWithAccessibilityLabels(posts.map({ (post: PostModel) -> String in
            return post.title
        }))
    }
    
    func testInvokesShowDetail() {
        let showDetails = ExpectationInteractor<PostModel, Any>(expectation: self.expectationWithDescription("Interactor"))
        let postsSource = Source(state: State.ready(data: self.posts))
        let viewModel = PostsViewModel(posts: postsSource, showDetail: showDetails)
        self.setUpWithViewModel(viewModel)
        self.tester().tapViewWithAccessibilityLabel(self.posts.first!.title)
        
        XCTAssertEqual(showDetails.input!, self.posts.first!)
        
        self.waitForExpectationsWithTimeout(10, handler: nil)
    }

}
