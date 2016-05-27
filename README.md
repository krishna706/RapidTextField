# RapidTextField
Text Field with all delegate methods implemented as Blocks.Instead of writing multiple delegate methods we can use RapidTextField Directly 

Eg:

RapidTextField *txtField = [[RapidTextField alloc] initWithFrame:CGRectMake(100, 100, 100, 30)];
[txtField setPlaceholder:@"Enter"];
[txtField addResignAction:^(id sender) 
    {
     [txtField resignFirstResponder];
    } BeginEntryAction:^(id sender) {
        NSLog(@"BeginEntryAction called");
    } EntryTextAction:^BOOL (id sender,NSString *enteredString) {
        NSLog(@"EntryTextAction called %@",enteredString);
        return NO;
    }];
[self.view addSubview:txtField];
