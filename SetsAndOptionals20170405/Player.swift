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

enum Location: Int {
    case zero = 0
    case one = 1
    case two = 2
    case three = 3
    case four = 4
    case five = 5
    case six = 6
    case seven = 7
    case eight = 8
    case nine = 9
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
    let location: Location
    let player: Player
    
    public static func == (lhs: Move, rhs: Move) -> Bool {
        return lhs.location == rhs.location && lhs.player == rhs.player
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

func createGame(xPlayer: Player, oPlayer: Player) -> Game? {
    if xPlayer.symbol == oPlayer.symbol {
        return nil
    } else {
        return Game(playerOne: xPlayer, playerTwo: oPlayer, playerMove: [])
    }
}

// Create a play func

func play(_ player: Player, _ move: Location, _ game: Game) -> Game? {
    let turn = Move(location: move, player: player)
    var newTurn = game
    
    if game.playerMove.contains(Move(location: move, player: player)) {
        return nil
    } else {
        newTurn.playerMove.append(turn)
    }
    return newTurn
}

// Create a spot checker func

func symbol(at location: Location, in game: Game) -> Symbol? {
    var playerSymbol: Symbol?
    let emptySpace: Symbol? = nil
    let spots = game.playerMove
    for i in spots {
        switch i.location {
        case .nine:
            if playerSymbol != nil {
               return playerSymbol
            } else {
            playerSymbol = i.player.symbol
            }
            fallthrough
        case .eight:
            if playerSymbol != nil {
                return playerSymbol
            } else {
                playerSymbol = i.player.symbol
            }
            fallthrough
        case .seven:
            if playerSymbol != nil {
                return playerSymbol
            } else {
                playerSymbol = i.player.symbol
            }
            fallthrough
        case .six:
            if playerSymbol != nil {
                return playerSymbol
            } else {
                playerSymbol = i.player.symbol
            }
            fallthrough
        case .five:
            if playerSymbol != nil {
                return playerSymbol
            } else {
                playerSymbol = i.player.symbol
            }
            fallthrough
        case .four:
            if playerSymbol != nil {
                return playerSymbol
            } else {
                playerSymbol = i.player.symbol
            }
            fallthrough
        case .three:
            if playerSymbol != nil {
                return playerSymbol
            } else {
                playerSymbol = i.player.symbol
            }
            fallthrough
        case .two:
            if playerSymbol != nil {
                return playerSymbol
            } else {
                playerSymbol = i.player.symbol
            }
            fallthrough
        case .one:
            if playerSymbol != nil {
                return playerSymbol
            } else {
                playerSymbol = i.player.symbol
            }
            fallthrough
        case .zero:
            return emptySpace
        }
    }
    
    return playerSymbol
}

func symbol2(at location: Location, in game: Game) -> Symbol? {
    var playerSymbol: Symbol?
    let emptySpace: Symbol? = nil
    let spots = game.playerMove
    for i in spots {
        switch i.location {
        case .nine:
            if playerSymbol == nil {
                return playerSymbol
            } else {
                playerSymbol = i.player.symbol
            }
            fallthrough
        case .eight:
            if playerSymbol == nil {
                return playerSymbol
            } else {
                playerSymbol = i.player.symbol
            }
            fallthrough
        case .seven:
            if playerSymbol == nil {
                return playerSymbol
            } else {
                playerSymbol = i.player.symbol
            }
            fallthrough
        case .six:
            if playerSymbol == nil {
                return playerSymbol
            } else {
                playerSymbol = i.player.symbol
            }
            fallthrough
        case .five:
            if playerSymbol == nil {
                return playerSymbol
            } else {
                playerSymbol = i.player.symbol
            }
            fallthrough
        case .four:
            if playerSymbol == nil {
                return playerSymbol
            } else {
                playerSymbol = i.player.symbol
            }
            fallthrough
        case .three:
            if playerSymbol == nil {
                return playerSymbol
            } else {
                playerSymbol = i.player.symbol
            }
            fallthrough
        case .two:
            if playerSymbol == nil {
                return playerSymbol
            } else {
                playerSymbol = i.player.symbol
            }
            fallthrough
        case .one:
            if playerSymbol == nil {
                return playerSymbol
            } else {
                playerSymbol = i.player.symbol
                fallthrough
            }
        case .zero:
            return emptySpace
        }
    }
    
    return emptySpace
}








