//
//  DataManager.h
//  Lesson_23
//
//  Created by Nikita Vintonovich on 10/31/17.
//  Copyright © 2017 Vint-Rock. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

#import "Report+CoreDataProperties.h"
#import "Nomination+CoreDataProperties.h"

@interface DataManager : NSObject

+ (id)storage;

- (Report*)createReport;
- (NSArray*)allReports;

@end
