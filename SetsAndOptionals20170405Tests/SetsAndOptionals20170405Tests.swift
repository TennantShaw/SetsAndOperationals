//
//  SetsAndOptionals20170405Tests.swift
//  SetsAndOptionals20170405Tests
//
//  Created by Tennant Shaw on 4/6/17.
//  Copyright © 2017 Tennant Shaw. All rights reserved.
//

import XCTest
@testable import SetsAndOptionals20170405

class SetsAndOptionals20170405Tests: XCTestCase {
    
    // Write a type, player with two properties, name and symbol. There are two valid symbols: x and o.
    // Write a function, createPLayer, which accepts a name and a symbol, returns a player with the provided values if the provided name is non-empty…
    func testCreatePlayerWithNonemptyName() {
        let result = createPlayer(name: "Tennant", symbol: .x)
        let expected = Player(name: "Tennant", symbol: .x)
        XCTAssertEqual(result, expected)
    }
    
    //  …and returns nothing if the name was empty.
    func testCreatePlayerWithEmptyName() {
        let result = createPlayer(name: "", symbol: .x)
        let expected: Player? = nil
        XCTAssertEqual(result, expected)
    }
    
    
    // Write a type game which holds two players with differing symbols.
    func testCreateGameWithValidPlayers() {
        let playerOne = Player(name: "Tennant", symbol: .x)
        let playerTwo = Player(name: "Shannon", symbol: .o)
        
        let result = createGame(xPlayer: playerOne, oPlayer: playerTwo)
        let expected: Game? = Game(playerOne: playerOne, playerTwo: playerTwo, playerMove: [])
        XCTAssertEqual(result, expected)
    }
    
    // Write a type game which holds two players with differing symbols.
    func testCreateGameWithInvalidPlayers() {
        let playerOne = Player(name: "Tennant", symbol: .x)
        let playerTwo = Player(name: "Shannon", symbol: .x)
        
        let result = createGame(xPlayer: playerOne, oPlayer: playerTwo)
        let expected: Game? = nil
        XCTAssertEqual(result, expected)
    }
    
    // Write a function, play, which accepts a player, a location, and a game and returns a new game with a move for the provided player at the provided location added to the moves property of the game.
    func testPlay() {
        let liz = Player(name: "Tennant", symbol: .x)
        let bart = Player(name: "Shannon", symbol: .o)
        let game = Game(playerOne: liz, playerTwo: bart, playerMove: [])

        let result = play(liz, .four, game)
        let expected = Game(playerOne: liz, playerTwo: bart, playerMove: [Move(location: .four, player: liz)])
       XCTAssertEqual(result, expected)
    }

    // Write a function, symbol(at location: Location, in game: Game )
    func testSymbolAtOccupiedLocation() {
        let liz = Player(name: "Tennant", symbol: .x)
        let bart = Player(name: "Shannon", symbol: .o)
        let game = Game(playerOne: liz, playerTwo: bart, playerMove: [Move(location: .four, player: liz), (Move(location: .four, player: bart))])
        let result = symbol(at: .four, in: game)
        let expected: Symbol = .x

        XCTAssertEqual(result, expected)
    }

   func testSymbolAtUnoccupiedLocation() {
        let liz = Player(name: "Tennant", symbol: .x)
        let bart = Player(name: "Shannon", symbol: .o)
        let game = Game(playerOne: liz, playerTwo: bart, playerMove: [Move(location: .four, player: liz), (Move(location: .two, player: bart))])
    
        let result = symbol2(at: .zero, in: game)
        let expected: Symbol? = nil

        XCTAssertEqual(result, expected)
    }
}








