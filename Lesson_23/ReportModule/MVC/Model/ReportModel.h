//
//  ReportModel.h
//  Lesson_23
//
//  Created by Nikita Vintonovich on 10/31/17.
//  Copyright © 2017 Vint-Rock. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ReportModuleProtocol.h"

@interface ReportModel : NSObject <ReportModelInput>

@property (nonatomic, weak) id <ReportModelOutut> modelOutput;

@end
