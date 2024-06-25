//
//  ViewController.m
//  Matchismo
//
//  Created by Oleg on 20.06.2024.
//

#import "ViewController.h"
#import "PlayingCardDeck.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipsCount;
@property (strong, nonatomic) Deck *deck;
@end

@implementation ViewController

- (Deck *)deck {
    if (!_deck) _deck = [self createDeck];
    return _deck;
}

- (Deck *)createDeck {
    return [[PlayingCardDeck alloc] init];
}

- (void)flipCardButton:(UIButton *)button setTitle:(NSString *)title imageNamed:(NSString *)name {
    [button setBackgroundImage:[UIImage imageNamed:name] forState:UIControlStateNormal];
    [button setTitle:title forState:UIControlStateNormal];
    self.flipsCount++;
}

- (IBAction)touchCardButton:(UIButton *)sender {
    if ([sender.currentTitle length]) {
        [self flipCardButton:sender setTitle:@"" imageNamed:@"cardback"];
    } else {
        Card *card = [self.deck drawRandomCard];
        if (card) {
            [self flipCardButton:sender setTitle:card.contents imageNamed:@"cardfront"];
        }
    }
}

- (void)setFlipsCount:(int)flipsCount {
    _flipsCount = flipsCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Filps: %d", self.flipsCount];
    NSLog(@"Flips count: %d", self.flipsCount);
}

@end
