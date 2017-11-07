//
//  DataManager+Storage.m
//  Lesson_23
//
//  Created by Nikita Vintonovich on 11/3/17.
//  Copyright © 2017 Vint-Rock. All rights reserved.
//

#import "DataManager+Storage.h"
#import "Report+CoreDataProperties.h"
#import "Nomination+CoreDataProperties.h"

@implementation DataManager (Storage)

- (Report*)createReport
{
    Report *report = [NSEntityDescription insertNewObjectForEntityForName:@"Report" inManagedObjectContext:self.context];
    report.name = @"Test Report";
    return report;
}

- (void)removeReport:(Report*)report
{
    [self.context deleteObject:report];
}

- (NSArray*)allReports
{
    NSError *error = nil;
    NSFetchRequest *request = [Report fetchRequest];
    
    NSArray *result = [self.context executeFetchRequest:request error:&error];
    
    if (!error)
    {
        return result;
    }
    
    return nil;
}

@end
