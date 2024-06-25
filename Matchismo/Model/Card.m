//
//  Card.m
//  Matchismo
//
//  Created by Oleg on 25.06.2024.
//

#import "Card.h"

@interface Card()

@end

@implementation Card

- (int)match:(NSArray *)otherCards
{
    int scope = 0;
    for (Card *card in otherCards) {
        if ([card.contents isEqualToString:self.contents]) {
            scope = 1;
        }
    }
    
    return scope;
}

@end
