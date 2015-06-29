//
//  Constants.swift
//  alkwangju
//
//  Created by lutfiana sari ariestien on 6/29/15.
//  Copyright (c) 2015 Kovloq Technologies. All rights reserved.
//

import Foundation

import UIKit


struct Params
{
    static var allowLandscapeMode = "0"
    static var forceBackToPortraitMode = "0"
    static var allowAutoResizingPlayerFrame = "0"
    static var autohide = "2"
    static var autoplay = "0"
    static var cc_load_policy = "0"
    static var color = "0"
    static var controls = "1"
    static var disablekb = "0"
    static var enablejsapi = "0"
    static var end = "0"
    static var fullscreen = "1"
    static var iv_load_policy = "1"
    static var list = "0"
    static var listType = "0"
    static var loops = "0"
    static var modestbranding = "0"
    static var playerapiid = "0"
    static var playList = "0"
    static var playsinline = "0"
    static var rel = "1"
    static var showinfo = "1"
    static var start = "0"
    static var theme = "0"
    static var hd = "0"
    static var hd720 = "0"
    static var hd1080 = "0"
}

struct Const {
    // Player State
    static var YoutubePlayerStateUnstartedCode: NSString = "-1"
    static var YoutubePlayerrStateEndedCode: NSString = "0"
    static var YoutubePlayerStatePlayingCode: NSString = "1"
    static var YoutubePlayerStatePausedCode: NSString = "2"
    static var YoutubePlayerStateBufferingCode: NSString = "3"
    static var YoutubePlayerStateCuedCode: NSString = "5"
    static var YoutubePlayerStateUnknownCode: NSString = "unknown"
    
    // Player Playback Quality
    static var YoutubePlaybackQualitySmallQuality: NSString = "small"
    static var YoutubePlaybackQualityMediumQuality: NSString = "medium"
    static var YoutubePlaybackQualityLargeQuality: NSString = "large"
    static var YoutubePlaybackQualityHD720Quality: NSString = "hd720"
    static var YoutubePlaybackQualityHD1080Quality: NSString = "hd1080"
    static var YoutubePlaybackQualityHighResQuality: NSString = "highres"
    static var YoutubePlaybackQualityUnknownQuality: NSString = "unknown"
    
    // Player Player Errors
    static var YoutubePlayerErrorInvalidParamErrorCode: NSString = "2"
    static var YoutubePlayerErrorHTML5ErrorCode: NSString = "5"
    static var YoutubePlayerErrorVideoNotFoundErrorCode: NSString = "100"
    static var YoutubePlayerErrorNotEmbeddableErrorCode: NSString = "101"
    static var YoutubePlayerErrorCannotFindVideoErrorCode: NSString = "105"
    
    // Player Callbacks
    static var YoutubePlayerCallbackOnReady: NSString = "onReady"
    static var YoutubePlayerCallbackOnStateChange: NSString = "onStateChange"
    static var YoutubePlayerCallbackOnPlaybackQualityChange: NSString = "onPlaybackQualityChange"
    static var YoutubePlayerCallbackOnError: NSString = "onError"
    static var YoutubePlayerCallbackOnYouTubeIframeAPIReady: NSString = "onYouTubeIframeAPIReady"
    static var YoutubePlayerEmbedUrlRegexPattern: NSString = "^http(s)://(www.)youtube.com/embed/(.*)$"
}
