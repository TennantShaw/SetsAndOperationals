//
//  Player.swift
//  SetsAndOptionals20170405
//
//  Created by Tennant Shaw on 4/6/17.
//  Copyright © 2017 Tennant Shaw. All rights reserved.
//

import Foundation

enum Symbol {
    case x
    case o
}

typealias Move1 = (location: Int, symbol: Symbol)

struct Location : Equatable {
    var x: Int
    var y: Int
    
    public static func == (lhs: Location, rhs: Location) -> Bool {
        return lhs.x == rhs.x && lhs.y == rhs.y
    }
}

struct Player : Equatable {
    var name: String
    let symbol: Symbol
    
    public static func == (lhs: Player, rhs: Player) -> Bool {
        return lhs.name == rhs.name && lhs.symbol == rhs.symbol
    }
}

struct Game : Equatable {
    let playerOne: Player
    let playerTwo: Player
    var playerMove: [Move] = []
    
    public static func == (lhs: Game, rhs: Game) -> Bool {
        return lhs.playerOne == rhs.playerOne && lhs.playerTwo == rhs.playerTwo
    }
}

struct Move : Equatable {
    let location: (Int, Int)
    let symbol: Symbol
    
    public static func == (lhs: Move, rhs: Move) -> Bool {
        return lhs.location == rhs.location && lhs.symbol == rhs.symbol
    }
}


// Create Player func

func createPlayer(name: String, symbol: Symbol) -> Player? {
    if name.isEmpty {
        return nil
    } else {
        return Player(name: name, symbol: symbol)
    }
}


// Create Game func

func createGame(player: Player, secondPlayer: Player) -> Game? {
    if player.symbol == secondPlayer.symbol {
        return nil
    } else {
        return Game(playerOne: player, playerTwo: secondPlayer, playerMove: [])
    }
}

// Create a play func

func playerTurn (player: Player, move: Location, game: Game) -> Game? {
    return nil
}









