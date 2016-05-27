//
//  UIButton+RapidButton.m
//  RapidElements
//
//  Created by RadhaKrishna on 21/03/16.
//  Copyright © 2016 Rapid Technologies. All rights reserved.
//


#import "RapidTextField.h"


@implementation RapidTextField

-(instancetype)init
{
    self = [super init];
    return self;
}
-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    return self;
}

-(void)addResignAction:(TxtActionBlock)resignAction BeginEntryAction:(TxtActionBlock)beginEntryAction  EntryTextAction:(TxtActionEnteredBlock)entryTextAction
{
    self.resignAction = resignAction;
    self.beginEntryAction = beginEntryAction;
    self.entryTextAction = entryTextAction;
    
    self.delegate = self;
    [super self].delegate = self;
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if(self.resignAction)
        self.resignAction(self);
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    if(self.beginEntryAction)
        self.beginEntryAction(self);
}
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    if(self.entryTextAction)
    {
       return self.entryTextAction(self,string);
    }
    return YES;
}

-(void)dealloc
{
    self.entryTextAction = nil;
    self.beginEntryAction = nil;
    self.resignAction = nil;
}

@end
