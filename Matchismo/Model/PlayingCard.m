//
//  PlayingCard.m
//  Matchismo
//
//  Created by Oleg on 25.06.2024.
//

#import "PlayingCard.h"

@implementation PlayingCard

- (NSString *)contents
{
    NSArray *rankSuites = [PlayingCard rankStrings];
    return [rankSuites[self.rank] stringByAppendingString:self.suit];
}

@synthesize suit = _suit;
+ (NSArray *)validSuits {
    return @[@"♣️", @"♠️", @"♥️", @"♦️"];
}
+ (NSArray *)rankStrings {
    return @[@"?", @"A", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"J", @"Q", @"K"];
}
+ (NSUInteger)maxRank {
    return [[self rankStrings] count] - 1;
}
- (void)setSuit:(NSString *)suit {
    if ([[PlayingCard validSuits] containsObject:suit]) {
        _suit = suit;
    }
}
- (NSString *)suit {
    return _suit ? _suit : @"?";
}
- (void)setRank:(NSUInteger)rank {
    if (rank <= [PlayingCard maxRank]) {
        _rank = rank;
    }
}

@end
