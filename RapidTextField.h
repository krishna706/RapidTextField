//
//  UIButton+RapidButton.h
//  RapidElements
//
//  Created by RadhaKrishna on 21/03/16.
//  Copyright © 2016 Rapid Technologies. All rights reserved.
//


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

typedef void (^TxtActionBlock)(UITextField *textField);
typedef BOOL (^TxtActionEnteredBlock)(UITextField *sender,NSString *enteredString);

@interface RapidTextField:UITextField <UITextFieldDelegate>
{
}
@property(nonatomic,strong) TxtActionBlock resignAction,beginEntryAction;
@property(nonatomic,strong) TxtActionEnteredBlock entryTextAction;


-(instancetype)initWithFrame:(CGRect)frame;
-(void)addResignAction:(void (^)(id sender))resignAction BeginEntryAction:(void (^)(id sender))beginEntryAction  EntryTextAction:(TxtActionEnteredBlock)entryTextAction;
//-(void)addTextDidChangeAction:(void (^)(id sender))resignAction BeginEntryAction:(void (^)(id sender))beginEntryAction  EntryTextAction:(TxtActionEnteredBlock)entryTextAction ;


@end
