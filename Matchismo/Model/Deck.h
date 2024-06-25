//
//  Deck.h
//  Matchismo
//
//  Created by Oleg on 25.06.2024.
//

#import "Card.h"

@interface Deck : NSObject

- (void)addCard:(Card *)card atTop:(BOOL)atTop;
- (void)addCard:(Card *)card;

- (Card *)drawRandomCard;

@end
