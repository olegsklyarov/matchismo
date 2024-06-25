//
//  Card.h
//  Matchismo
//
//  Created by Oleg on 25.06.2024.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString *contents;

@property (nonatomic, getter=isChosen) BOOL chosen;
@property (nonatomic, getter=isMathced) BOOL matched;

- (int)match:(NSArray *) otherCards;

@end
