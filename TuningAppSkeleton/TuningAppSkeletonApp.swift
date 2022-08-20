//
//  TuningAppSkeletonApp.swift
//  TuningAppSkeleton
//
//  Created by Lorenzo Brown on 6/22/22.
//
import AudioKit
import AudioKitUI
import AVFoundation
import SwiftUI


@main
struct TuningAppSkeletonApp: App {
	init() {
#if os(iOS)
		do {
			Settings.bufferLength = .short
			try AVAudioSession.sharedInstance().setPreferredIOBufferDuration(Settings.bufferLength.duration)
			try AVAudioSession.sharedInstance().setCategory(.playAndRecord,
															options: [.defaultToSpeaker, .mixWithOthers, .allowBluetoothA2DP])
			try AVAudioSession.sharedInstance().setActive(true)
		} catch let err {
			print(err)
		}
#endif
	}

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
