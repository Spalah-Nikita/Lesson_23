//
//  ReportView.m
//  Lesson_23
//
//  Created by Nikita Vintonovich on 10/31/17.
//  Copyright © 2017 Vint-Rock. All rights reserved.
//

#import "ReportView.h"

@implementation ReportView

- (IBAction)addNewReportButtonAction:(id)sender
{
    if ([self.userInterfaceInput respondsToSelector:@selector(addReportButtonWasTapped)])
    {
        [self.userInterfaceInput addReportButtonWasTapped];
    }
}


@end
