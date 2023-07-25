//
//  FriendImageView.swift
//  Homework0702
//
//  Created by kokori on 2023/07/02.
//

import SwiftUI

struct FriendImageView: View {
  var friend: Friend
    var body: some View {
      AsyncImage(url: URL(string: friend.image)) { image in
        image.resizable().aspectRatio(contentMode: .fit).clipShape(Circle())
      } placeholder: {
        ProgressView()
      }
    }
}

struct FriendImageView_Previews: PreviewProvider {
    static var previews: some View {
        FriendImageView(friend: friends[0])
    }
}
