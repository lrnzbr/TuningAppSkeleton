//
//  NoteModel.swift
//  TuningAppSkeleton
//
//  Created by Lorenzo Brown on 8/4/22.
//

import Foundation
import SwiftUI

enum Incidental {
	case Sharp
	case Natural
	case Flat
}

enum Tuning {
	case sharp
	case flat
	case natural
}

enum NoteName {
	case A(octave: Int , incidental: Incidental)
	case B(octave: Int , incidental: Incidental)
	case C(octave: Int , incidental: Incidental)
	case D(octave: Int , incidental: Incidental)
	case E(octave: Int , incidental: Incidental)
	case F(octave: Int , incidental: Incidental)
	case G(octave: Int , incidental: Incidental)
}

struct LedgerLine: Codable, Identifiable {
	var id = UUID()
	let offset: CGFloat
}

struct Note: Identifiable {
	var id = UUID()
	let incidental: Tuning
	let name: String
	let ledgerLines: [LedgerLine]
	let notePosition: CGFloat
}

let ledger1down = LedgerLine(offset: staffHeight * 3)
let ledger2down = LedgerLine(offset: staffHeight * 4)
let ledger3down = LedgerLine(offset: staffHeight * 5)
let ledger4down = LedgerLine(offset: staffHeight * 6)
let ledger5down = LedgerLine(offset: staffHeight * 7)
let ledger6down = LedgerLine(offset: staffHeight * 8)
let ledger7down = LedgerLine(offset: staffHeight * 9)
let ledger8down = LedgerLine(offset: staffHeight * 10)
let ledger9down = LedgerLine(offset: staffHeight * 11)
let ledger10down = LedgerLine(offset: staffHeight * 12)
let ledger11down = LedgerLine(offset: staffHeight * 13)
let ledger12down = LedgerLine(offset: staffHeight * 14)
let ledger13down = LedgerLine(offset: staffHeight * 15)
let ledger14down = LedgerLine(offset: staffHeight * 16)




let ledger1up = LedgerLine(offset: staffHeight * -3)
let ledger2up = LedgerLine(offset: staffHeight * -4)
let ledger3up = LedgerLine(offset: staffHeight * -5)
let ledger4up = LedgerLine(offset: staffHeight * -6)
let ledger5up = LedgerLine(offset: staffHeight * -7)
let ledger6up = LedgerLine(offset: staffHeight * -8)
let ledger7up = LedgerLine(offset: staffHeight * -9)
let ledger8up = LedgerLine(offset: staffHeight * -10)
let ledger9up = LedgerLine(offset: staffHeight * -11)
let ledger10up = LedgerLine(offset: staffHeight * -12)
let ledger11up = LedgerLine(offset: staffHeight * -13)
let ledger12up = LedgerLine(offset: staffHeight * -14)


let upledgers = [ledger1up, ledger2up, ledger3up, ledger4up, ledger5up, ledger6up, ledger7up, ledger8up, ledger9up, ledger10up, ledger11up, ledger12up]
let downledgers = [ledger1down, ledger2down, ledger3down, ledger4down, ledger5down, ledger6down, ledger7down, ledger8down, ledger9down, ledger10down, ledger11down, ledger12down, ledger13down, ledger14down]

let C0 = Note(incidental: .natural, name: "C", ledgerLines: Array(downledgers[0...13]), notePosition: staffHeight * 17)
let CSharp0 = Note(incidental: .sharp, name: "C♯", ledgerLines: Array(downledgers[0...13]), notePosition: staffHeight * 17)
let DFlat0 = Note(incidental: .flat, name: "D♭", ledgerLines: Array(downledgers[0...13]), notePosition: staffHeight * 16.5)
let D0 = Note(incidental: .natural, name: "D", ledgerLines: Array(downledgers[0...13]), notePosition: staffHeight * 16.5)
let DSharp0 = Note(incidental: .sharp, name: "D♯", ledgerLines: Array(downledgers[0...13]), notePosition: staffHeight * 16.5)
let EFlat0 = Note(incidental: .flat, name: "E♭", ledgerLines: Array(downledgers[0...12]), notePosition: staffHeight * 16)
let E0 = Note(incidental: .natural, name: "E", ledgerLines: Array(downledgers[0...12]), notePosition: staffHeight * 16)
let F0 = Note(incidental: .natural, name: "F", ledgerLines: Array(downledgers[0...12]), notePosition: staffHeight * 15.5)
let FSharp0 = Note(incidental: .sharp, name: "F♯", ledgerLines: Array(downledgers[0...12]), notePosition: staffHeight * 15.5)
let GFlat0 = Note(incidental: .flat, name: "G♭", ledgerLines: Array(downledgers[0...11]), notePosition: staffHeight * 15)
let G0 = Note(incidental: .natural, name: "G", ledgerLines: Array(downledgers[0...11]), notePosition: staffHeight * 15)
let GSharp0 = Note(incidental: .sharp, name: "G♯", ledgerLines: Array(downledgers[0...11]), notePosition: staffHeight * 15)
let AFlat0 = Note(incidental: .flat, name: "A♭", ledgerLines: Array(downledgers[0...11]), notePosition: staffHeight * 14.5)
let A0 = Note(incidental: .natural, name: "A", ledgerLines: Array(downledgers[0...11]), notePosition: staffHeight * 14.5)
let ASharp0 = Note(incidental: .sharp, name: "A♯", ledgerLines: Array(downledgers[0...11]), notePosition: staffHeight * 14.5)
let BFlat0 = Note(incidental: .flat, name: "B♭", ledgerLines: Array(downledgers[0...10]), notePosition: staffHeight * 14)
let B0 = Note(incidental: .natural, name: "B", ledgerLines: Array(downledgers[0...10]), notePosition: staffHeight * 14)

let C1 = Note(incidental: .natural, name: "C", ledgerLines: Array(downledgers[0...10]), notePosition: staffHeight * 13.5)
let CSharp1 = Note(incidental: .sharp, name: "C♯", ledgerLines: Array(downledgers[0...10]), notePosition: staffHeight * 13.5)
let DFlat1 = Note(incidental: .flat, name: "D♭", ledgerLines: Array(downledgers[0...9]), notePosition: staffHeight * 13)
let D1 = Note(incidental: .natural, name: "D", ledgerLines: Array(downledgers[0...9]), notePosition: staffHeight * 13)
let DSharp1 = Note(incidental: .sharp, name: "D♯", ledgerLines: Array(downledgers[0...9]), notePosition: staffHeight * 13)
let EFlat1 = Note(incidental: .flat, name: "E♭", ledgerLines: Array(downledgers[0...9]), notePosition: staffHeight * 12.5)
let E1 = Note(incidental: .natural, name: "E", ledgerLines: Array(downledgers[0...9]), notePosition: staffHeight * 12.5)
let F1 = Note(incidental: .natural, name: "F", ledgerLines: Array(downledgers[0...8]), notePosition: staffHeight * 12)
let FSharp1 = Note(incidental: .sharp, name: "F♯", ledgerLines: Array(downledgers[0...8]), notePosition: staffHeight * 12)
let GFlat1 = Note(incidental: .flat, name: "G♭", ledgerLines: Array(downledgers[0...8]), notePosition: staffHeight * 11.5)
let G1 = Note(incidental: .natural, name: "G", ledgerLines: Array(downledgers[0...8]), notePosition: staffHeight * 11.5)
let GSharp1 = Note(incidental: .sharp, name: "G♯", ledgerLines: Array(downledgers[0...8]), notePosition: staffHeight * 11.5)
let AFlat1 = Note(incidental: .flat, name: "A♭", ledgerLines: Array(downledgers[0...7]), notePosition: staffHeight * 11)
let A1 = Note(incidental: .natural, name: "A", ledgerLines: Array(downledgers[0...7]), notePosition: staffHeight * 11)
let ASharp1 = Note(incidental: .sharp, name: "A♯", ledgerLines: Array(downledgers[0...7]), notePosition: staffHeight * 11)
let BFlat1 = Note(incidental: .flat, name: "B♭", ledgerLines: Array(downledgers[0...7]), notePosition: staffHeight * 10.5)
let B1 = Note(incidental: .natural, name: "B", ledgerLines: Array(downledgers[0...7]), notePosition: staffHeight * 10.5)

let C2 = Note(incidental: .natural, name: "C", ledgerLines: Array(downledgers[0...6]), notePosition: staffHeight * 10)
let CSharp2 = Note(incidental: .sharp, name: "C♯", ledgerLines: Array(downledgers[0...6]), notePosition: staffHeight * 10)
let DFlat2 = Note(incidental: .flat, name: "D♭", ledgerLines: Array(downledgers[0...6]), notePosition: staffHeight * 9.5)
let D2 = Note(incidental: .natural, name: "D", ledgerLines: Array(downledgers[0...6]), notePosition: staffHeight * 9.5)
let DSharp2 = Note(incidental: .sharp, name: "D♯", ledgerLines: Array(downledgers[0...6]), notePosition: staffHeight * 9.5 )
let EFlat2 = Note(incidental: .flat, name: "E♭", ledgerLines: Array(downledgers[0...5]), notePosition: staffHeight * 9)
let E2 = Note(incidental: .natural, name: "E", ledgerLines: Array(downledgers[0...5]), notePosition: staffHeight * 9)
let F2 = Note(incidental: .natural, name: "F", ledgerLines: Array(downledgers[0...5]), notePosition: staffHeight * 8.5)
let FSharp2 = Note(incidental: .sharp, name: "F♯", ledgerLines: Array(downledgers[0...5]), notePosition: staffHeight * 8.5)
let GFlat2 = Note(incidental: .flat, name: "G♭", ledgerLines: Array(downledgers[0...5]), notePosition: staffHeight * 8)
let G2 = Note(incidental: .natural, name: "G", ledgerLines: Array(downledgers[0...5]), notePosition: staffHeight * 8)
let GSharp2 = Note(incidental: .sharp, name: "G♯", ledgerLines: Array(downledgers[0...5]), notePosition: staffHeight * 8)
let AFlat2 = Note(incidental: .flat, name: "A♭", ledgerLines: Array(downledgers[0...4]), notePosition: staffHeight * 7.5)
let A2 = Note(incidental: .natural, name: "A", ledgerLines: Array(downledgers[0...4]), notePosition: staffHeight * 7.5)
let ASharp2 = Note(incidental: .sharp, name: "A♯", ledgerLines: Array(downledgers[0...4]), notePosition: staffHeight * 7.5)
let BFlat2 = Note(incidental: .flat, name: "B♭", ledgerLines: Array(downledgers[0...4]), notePosition: staffHeight * 7)
let B2 = Note(incidental: .natural, name: "B", ledgerLines: Array(downledgers[0...4]), notePosition: staffHeight * 7)


let C3 = Note(incidental: .natural, name: "C", ledgerLines: Array(downledgers[0...3]), notePosition: staffHeight * 6.5)
let CSharp3 = Note(incidental: .sharp, name: "C♯", ledgerLines: Array(downledgers[0...3]), notePosition: staffHeight * 6.5)
let DFlat3 = Note(incidental: .flat, name: "D♭", ledgerLines: Array(downledgers[0...3]), notePosition: staffHeight * 6)
let D3 = Note(incidental: .natural, name: "D", ledgerLines: Array(downledgers[0...3]), notePosition: staffHeight * 6)
let DSharp3 = Note(incidental: .sharp, name: "D♯", ledgerLines: Array(downledgers[0...3]), notePosition: staffHeight * 6)
let EFlat3 = Note(incidental: .flat, name: "E♭", ledgerLines: Array(downledgers[0...2]), notePosition: staffHeight * 5.5)
let E3 = Note(incidental: .natural, name: "E", ledgerLines: Array(downledgers[0...2]), notePosition: staffHeight * 5.5)
let F3 = Note(incidental: .natural, name: "F", ledgerLines: Array(downledgers[0...2]), notePosition: staffHeight * 5)
let FSharp3 = Note(incidental: .sharp, name: "F♯", ledgerLines: Array(downledgers[0...2]), notePosition: staffHeight * 5)
let GFlat3 = Note(incidental: .flat, name: "G♭", ledgerLines: Array(downledgers[0...1]), notePosition: staffHeight * 4.5)
let G3 = Note(incidental: .natural, name: "G", ledgerLines: Array(downledgers[0...1]), notePosition: staffHeight * 4.5)
let GSharp3 = Note(incidental: .sharp, name: "G♯", ledgerLines: Array(downledgers[0...1]), notePosition: staffHeight * 4.5)
let AFlat3 = Note(incidental: .flat, name: "A♭", ledgerLines: Array(downledgers[0...1]), notePosition: staffHeight * 4)
let A3 = Note(incidental: .natural, name: "A", ledgerLines: Array(downledgers[0...1]), notePosition: staffHeight * 4)
let ASharp3 = Note(incidental: .sharp, name: "A♯", ledgerLines: Array(downledgers[0...1]), notePosition: staffHeight * 4)
let BFlat3 = Note(incidental: .flat, name: "B♭", ledgerLines: [ledger1down], notePosition: staffHeight * 3.5)
let B3 = Note(incidental: .natural, name: "B", ledgerLines: [ledger1down], notePosition: staffHeight*3.5)


let C4 = Note(incidental: .natural, name: "C", ledgerLines: [ledger1down], notePosition: staffHeight*3)
let CSharp4 = Note(incidental: .sharp, name: "C♯", ledgerLines: [ledger1down], notePosition: staffHeight*3)
let DFlat4 = Note(incidental: .flat, name: "D♭", ledgerLines: [], notePosition: staffHeight*2.5)
let D4 = Note(incidental: .natural, name: "D", ledgerLines: [], notePosition: staffHeight*2.5)
let DSharp4 = Note(incidental: .sharp, name: "D♯", ledgerLines: [], notePosition: staffHeight*2.5)
let EFlat4 = Note(incidental: .flat, name: "E♭", ledgerLines: [], notePosition: staffHeight*2)
let E4 = Note(incidental: .natural, name: "E", ledgerLines: [], notePosition: staffHeight*2)
let F4 = Note(incidental: .natural, name: "F", ledgerLines: [], notePosition: staffHeight*1.5)
let FSharp4 = Note(incidental: .sharp, name: "F♯", ledgerLines: [], notePosition: staffHeight*1.5)
let GFlat4 = Note(incidental: .flat, name: "G♭", ledgerLines: [], notePosition: staffHeight)
let G4 = Note(incidental: .natural, name: "G", ledgerLines: [], notePosition: staffHeight)
let GSharp4 = Note(incidental: .sharp, name: "G♯", ledgerLines: [], notePosition: staffHeight)
let AFlat4 = Note(incidental: .flat, name: "A♭", ledgerLines: [], notePosition: staffHeight*0.5)
let A4 = Note(incidental: .natural, name: "A", ledgerLines: [], notePosition: staffHeight*0.5)
let ASharp4 = Note(incidental: .sharp, name: "A♯", ledgerLines: [], notePosition: staffHeight*0.5)
let BFlat4 = Note(incidental: .flat, name: "B♭", ledgerLines: [], notePosition: 0)
let B4 = Note(incidental: .natural, name: "B", ledgerLines: [], notePosition: 0)



let C5 = Note(incidental: .natural, name: "C", ledgerLines: [], notePosition: -0.5 * staffHeight)
let CSharp5 = Note(incidental: .sharp, name: "C♯", ledgerLines: [], notePosition: -0.5 * staffHeight)
let DFlat5 = Note(incidental: .flat, name: "D♭", ledgerLines: [], notePosition: -1 * staffHeight)
let D5 = Note(incidental: .natural, name: "D", ledgerLines: [], notePosition: -1 * staffHeight)
let DSharp5 = Note(incidental: .sharp, name: "D♯", ledgerLines: [], notePosition: -1 * staffHeight)
let EFlat5 = Note(incidental: .flat, name: "E♭", ledgerLines: [], notePosition: -1.5 * staffHeight)
let E5 = Note(incidental: .natural, name: "E", ledgerLines: [], notePosition: -1.5 * staffHeight)
let F5 = Note(incidental: .natural, name: "F", ledgerLines: [], notePosition: -2 * staffHeight)
let FSharp5 = Note(incidental: .sharp, name: "F♯", ledgerLines: [], notePosition: -2 * staffHeight)
let GFlat5 = Note(incidental: .flat, name: "G♭", ledgerLines: [], notePosition: -2.5 * staffHeight)
let G5 = Note(incidental: .natural, name: "G", ledgerLines: [], notePosition: -2.5 * staffHeight)
let GSharp5 = Note(incidental: .sharp, name: "G♯", ledgerLines: [], notePosition: -2.5 * staffHeight)
let AFlat5 = Note(incidental: .flat, name: "A♭", ledgerLines: [ledger1up], notePosition: -3 * staffHeight)
let A5 = Note(incidental: .natural, name: "A", ledgerLines: [ledger1up], notePosition: -3 * staffHeight)
let ASharp5 = Note(incidental: .sharp, name: "A♯", ledgerLines: [ledger1up], notePosition: -3 * staffHeight)
let BFlat5 = Note(incidental: .flat, name: "B♭", ledgerLines: [ledger1up], notePosition: -3.5 * staffHeight)
let B5 = Note(incidental: .natural, name: "B", ledgerLines: [ledger1up], notePosition: -3.5 * staffHeight)


let C6 = Note(incidental: .natural, name: "C", ledgerLines: Array(upledgers[0...1]), notePosition: -4 * staffHeight)
let CSharp6 = Note(incidental: .sharp, name: "C♯", ledgerLines: Array(upledgers[0...1]), notePosition: -4 * staffHeight)
let DFlat6 = Note(incidental: .flat, name: "D♭", ledgerLines: Array(upledgers[0...1]), notePosition: -4.5 * staffHeight)
let D6 = Note(incidental: .natural, name: "D", ledgerLines: Array(upledgers[0...1]), notePosition: -4.5 * staffHeight)
let DSharp6 = Note(incidental: .sharp, name: "D♯", ledgerLines: Array(upledgers[0...1]), notePosition: -4.5 * staffHeight)
let EFlat6 = Note(incidental: .flat, name: "E♭", ledgerLines: Array(upledgers[0...2]), notePosition: -5 * staffHeight)
let E6 = Note(incidental: .natural, name: "E", ledgerLines: Array(upledgers[0...2]), notePosition: -5 * staffHeight)
let F6 = Note(incidental: .natural, name: "F", ledgerLines: Array(upledgers[0...2]), notePosition: -5.5 * staffHeight)
let FSharp6 = Note(incidental: .sharp, name: "F♯", ledgerLines: Array(upledgers[0...2]), notePosition: -5.5 * staffHeight)
let GFlat6 = Note(incidental: .flat, name: "G♭", ledgerLines: Array(upledgers[0...3]), notePosition: -6 * staffHeight)
let G6 = Note(incidental: .natural, name: "G", ledgerLines: Array(upledgers[0...3]), notePosition: -6 * staffHeight)
let GSharp6 = Note(incidental: .sharp, name: "G♯", ledgerLines: Array(upledgers[0...3]), notePosition: -6 * staffHeight)
let AFlat6 = Note(incidental: .flat, name: "A♭", ledgerLines: Array(upledgers[0...4]), notePosition: -6.5 * staffHeight)
let A6 = Note(incidental: .natural, name: "A", ledgerLines: Array(upledgers[0...4]), notePosition: -6.5 * staffHeight)
let ASharp6 = Note(incidental: .sharp, name: "A♯", ledgerLines: Array(upledgers[0...4]), notePosition: -6.5 * staffHeight)
let BFlat6 = Note(incidental: .flat, name: "B♭", ledgerLines: Array(upledgers[0...4]), notePosition: -7 * staffHeight)
let B6 = Note(incidental: .natural, name: "B", ledgerLines: Array(upledgers[0...4]), notePosition: -7 * staffHeight)


let C7 = Note(incidental: .natural, name: "C", ledgerLines: Array(upledgers[0...4]), notePosition: -7.5 * staffHeight)
let CSharp7 = Note(incidental: .sharp, name: "C♯", ledgerLines: Array(upledgers[0...4]), notePosition: -7.5 * staffHeight)
let DFlat7 = Note(incidental: .flat, name: "D♭", ledgerLines: Array(upledgers[0...5]), notePosition: -8 * staffHeight)
let D7 = Note(incidental: .natural, name: "D", ledgerLines: Array(upledgers[0...5]), notePosition: -8 * staffHeight)
let DSharp7 = Note(incidental: .sharp, name: "D♯", ledgerLines: Array(upledgers[0...5]), notePosition: -8 * staffHeight)
let EFlat7 = Note(incidental: .flat, name: "E♭", ledgerLines: Array(upledgers[0...6]), notePosition: -8.5 * staffHeight)
let E7 = Note(incidental: .natural, name: "E", ledgerLines: Array(upledgers[0...6]), notePosition: -8.5 * staffHeight)
let F7 = Note(incidental: .natural, name: "F", ledgerLines: Array(upledgers[0...6]), notePosition: -9 * staffHeight)
let FSharp7 = Note(incidental: .sharp, name: "F♯", ledgerLines: Array(upledgers[0...6]), notePosition: -9 * staffHeight)
let GFlat7 = Note(incidental: .flat, name: "G♭", ledgerLines: Array(upledgers[0...7]), notePosition: -9.5 * staffHeight)
let G7 = Note(incidental: .natural, name: "G", ledgerLines: Array(upledgers[0...7]), notePosition: -9.5 * staffHeight)
let GSharp7 = Note(incidental: .sharp, name: "G♯", ledgerLines: Array(upledgers[0...7]), notePosition: -9.5 * staffHeight)
let AFlat7 = Note(incidental: .flat, name: "A♭", ledgerLines: Array(upledgers[0...7]), notePosition: -10 * staffHeight)
let A7 = Note(incidental: .natural, name: "A", ledgerLines: Array(upledgers[0...7]), notePosition: -10 * staffHeight)
let ASharp7 = Note(incidental: .sharp, name: "A♯", ledgerLines: Array(upledgers[0...7]), notePosition: -10 * staffHeight)
let BFlat7 = Note(incidental: .flat, name: "B♭", ledgerLines: Array(upledgers[0...8]), notePosition: -10.5 * staffHeight)
let B7 = Note(incidental: .natural, name: "B", ledgerLines: Array(upledgers[0...8]), notePosition: -10.5 * staffHeight)


let C8 = Note(incidental: .natural, name: "C", ledgerLines: Array(upledgers[0...8]), notePosition: -11 * staffHeight)
let CSharp8 = Note(incidental: .sharp, name: "C♯", ledgerLines: Array(upledgers[0...8]), notePosition: -11 * staffHeight)
let DFlat8 = Note(incidental: .flat, name: "D♭", ledgerLines: Array(upledgers[0...9]), notePosition: -11.5 * staffHeight)
let D8 = Note(incidental: .natural, name: "D", ledgerLines: Array(upledgers[0...9]), notePosition: -11.5 * staffHeight)
let DSharp8 = Note(incidental: .sharp, name: "D♯", ledgerLines: Array(upledgers[0...9]), notePosition: -11.5 * staffHeight)
let EFlat8 = Note(incidental: .flat, name: "E♭", ledgerLines: Array(upledgers[0...9]), notePosition: -12 * staffHeight)
let E8 = Note(incidental: .natural, name: "E", ledgerLines: Array(upledgers[0...9]), notePosition: -12 * staffHeight)
let F8 = Note(incidental: .natural, name: "F", ledgerLines: Array(upledgers[0...10]), notePosition: -12.5 * staffHeight)
let FSharp8 = Note(incidental: .sharp, name: "F♯", ledgerLines: Array(upledgers[0...10]), notePosition: -12.5 * staffHeight)
let GFlat8 = Note(incidental: .flat, name: "G♭", ledgerLines: Array(upledgers[0...10]), notePosition: -13 * staffHeight)
let G8 = Note(incidental: .natural, name: "G", ledgerLines: Array(upledgers[0...10]), notePosition: -13 * staffHeight)
let GSharp8 = Note(incidental: .sharp, name: "G♯", ledgerLines: Array(upledgers[0...10]), notePosition: -13 * staffHeight)
let AFlat8 = Note(incidental: .flat, name: "A♭", ledgerLines: Array(upledgers[0...11]), notePosition: -13.5 * staffHeight)
let A8 = Note(incidental: .natural, name: "A", ledgerLines: Array(upledgers[0...11]), notePosition: -13.5 * staffHeight)
let ASharp8 = Note(incidental: .sharp, name: "A♯", ledgerLines: Array(upledgers[0...11]), notePosition: -13.5 * staffHeight)
let BFlat8 = Note(incidental: .flat, name: "B♭", ledgerLines: Array(upledgers[0...11]), notePosition: -14 * staffHeight)
let B8 = Note(incidental: .natural, name: "B", ledgerLines: Array(upledgers[0...11]), notePosition: -14 * staffHeight)

let noteNameMapping: [String: [Note]] = [
	"C0 / C0" : [C0],
	"C♯0 / D♭0" : [CSharp0, DFlat0],
	"D0 / D0" : [D0],
	"D♯0 / E♭0" : [DSharp0 , EFlat0],
	"E0 / E0" : [E0],
	"F0 / F0" : [F0],
	"F♯0 / G♭0" : [FSharp0, GFlat0],
	"G0 / G0" : [G0],
	"G♯0 / A♭0" : [GSharp0, AFlat0],
	"A0 / A0": [A0],
	"A♯0 / B♭0" : [ASharp0, BFlat0],
	"B0 / B0" : [B0],

	"C1 / C1" : [C1],
	"C♯1 / D♭1" : [CSharp1, DFlat1],
	"D1 / D1" : [D1],
	"D♯1 / E♭1" : [DSharp1 , EFlat1],
	"E1 / E1" : [E1],
	"F1 / F1" : [F1],
	"F♯1 / G♭1" : [FSharp1, GFlat1],
	"G1 / G1" : [G1],
	"G♯1 / A♭1" : [GSharp1, AFlat1],
	"A1 / A1": [A1],
	"A♯1 / B♭1" : [ASharp1, BFlat1],
	"B1 / B1" : [B1],

	"C2 / C2" : [C2],
	"C♯2 / D♭2" : [CSharp2, DFlat2],
	"D2 / D2" : [D2],
	"D♯2 / E♭2" : [DSharp2 , EFlat2],
	"E2 / E2" : [E2],
	"F2 / F2" : [F2],
	"F♯2 / G♭2" : [FSharp2, GFlat2],
	"G2 / G2" : [G2],
	"G♯2 / A♭2" : [GSharp2, AFlat2],
	"A2 / A2": [A2],
	"A♯2 / B♭2" : [ASharp2, BFlat2],
	"B2 / B2" : [B2],

	"C3 / C3" : [C3],
	"C♯3 / D♭3" : [CSharp3, DFlat3],
	"D3 / D3" : [D3],
	"D♯3 / E♭3" : [DSharp3 , EFlat3],
	"E3 / E3" : [E3],
	"F3 / F3" : [F3],
	"F♯3 / G♭3" : [FSharp3, GFlat3],
	"G3 / G3" : [G3],
	"G♯3 / A♭3" : [GSharp3, AFlat3],
	"A3 / A3": [A3],
	"A♯3 / B♭3" : [ASharp3, BFlat3],
	"B3 / B3" : [B3],

	"C4 / C4" : [C4],
	"C♯4 / D♭4" : [CSharp4, DFlat4],
	"D4 / D4" : [D4],
	"D♯4 / E♭4" : [DSharp4 , EFlat4],
	"E4 / E4" : [E4],
	"F4 / F4" : [F4],
	"F♯4 / G♭4" : [FSharp4, GFlat4],
	"G4 / G4" : [G4],
	"G♯4 / A♭4" : [GSharp4, AFlat4],
	"A4 / A4": [A4],
	"A♯4 / B♭4" : [ASharp4, BFlat4],
	"B4 / B4" : [B4],

	"C5 / C5" : [C5],
	"C♯5 / D♭5" : [CSharp5, DFlat5],
	"D5 / D5" : [D5],
	"D♯5 / E♭5" : [DSharp5 , EFlat5],
	"E5 / E5" : [E5],
	"F5 / F5" : [F5],
	"F♯5 / G♭5" : [FSharp5, GFlat5],
	"G5 / G5" : [G5],
	"G♯5 / A♭5" : [GSharp5, AFlat5],
	"A5 / A5": [A5],
	"A♯5 / B♭5" : [ASharp5, BFlat5],
	"B5 / B5" : [B5],

	"C6 / C6" : [C6],
	"C♯6 / D♭6" : [CSharp6, DFlat6],
	"D6 / D6" : [D6],
	"D♯6 / E♭6" : [DSharp6 , EFlat6],
	"E6 / E6" : [E6],
	"F6 / F6" : [F6],
	"F♯6 / G♭6" : [FSharp6, GFlat6],
	"G6 / G6" : [G6],
	"G♯6 / A♭6" : [GSharp6, AFlat6],
	"A6 / A6": [A6],
	"A♯6 / B♭6" : [ASharp6, BFlat6],
	"B6 / B6" : [B6],

	"C7 / C7" : [C7],
	"C♯7 / D♭7" : [CSharp7, DFlat7],
	"D7 / D7" : [D7],
	"D♯7 / E♭7" : [DSharp7 , EFlat7],
	"E7 / E7" : [E7],
	"F7 / F7" : [F7],
	"F♯7 / G♭7" : [FSharp7, GFlat7],
	"G7 / G7" : [G7],
	"G♯7 / A♭7" : [GSharp7, AFlat7],
	"A7 / A7": [A7],
	"A♯7 / B♭7" : [ASharp7, BFlat7],
	"B7 / B7" : [B7],

	"C8 / C8" : [C8],
	"C♯8 / D♭8" : [CSharp8, DFlat8],
	"D8 / D8" : [D8],
	"D♯8 / E♭8" : [DSharp8 , EFlat8],
	"E8 / E8" : [E8],
	"F8 / F8" : [F8],
	"F♯8 / G♭8" : [FSharp8, GFlat8],
	"G8 / G8" : [G8],
	"G♯8 / A♭8" : [GSharp8, AFlat8],
	"A8 / A8": [A8],
	"A♯8 / B♭8" : [ASharp8, BFlat8],
	"B8 / B8" : [B8]
]
