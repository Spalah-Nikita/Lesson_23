//
//  DataManager+Storage.h
//  Lesson_23
//
//  Created by Nikita Vintonovich on 11/3/17.
//  Copyright © 2017 Vint-Rock. All rights reserved.
//

#import "DataManager.h"

@class Report, Nomination;

@interface DataManager (Storage)

- (Report*)createReport;
- (void)removeReport:(Report*)report;

- (NSArray*)allReports;

@end
