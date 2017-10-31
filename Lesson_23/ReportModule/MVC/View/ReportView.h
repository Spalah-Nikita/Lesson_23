//
//  ReportView.h
//  Lesson_23
//
//  Created by Nikita Vintonovich on 10/31/17.
//  Copyright © 2017 Vint-Rock. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ReportModuleProtocol.h"

@interface ReportView : UIView <ReportViewOutput>

@property (nonatomic, weak) id <ReportViewInput> userInterfaceInput;
@property (nonatomic, weak) IBOutlet UITableView *tableView;

@end
