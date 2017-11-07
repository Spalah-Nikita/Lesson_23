//
//  ReportModel.m
//  Lesson_23
//
//  Created by Nikita Vintonovich on 10/31/17.
//  Copyright © 2017 Vint-Rock. All rights reserved.
//

#import "ReportModel.h"
#import "DataManager+Storage.h"

@interface ReportModel ()

@property (nonatomic, strong) NSMutableArray *reportsArray;

@end

@implementation ReportModel

#pragma mark - Report Model Input Protocol

- (NSInteger)reportsCount
{
    return self.reportsArray.count;
}

- (id)reportAtIndex:(NSInteger)index
{
    return [self.reportsArray objectAtIndex:index];
}

- (void)createNewTestReport
{
    [[DataManager storage] createReport];
    [[DataManager storage] saveContext];
    
    [self reloadData];
    [self.modelOutput dataDidReload];
}

- (void)needToReloadData
{
    [self reloadData];
    [self.modelOutput dataDidReload];
}

#pragma mark - Private

- (void)reloadData
{
    self.reportsArray = [NSMutableArray arrayWithArray:[[DataManager storage] allReports]];
}

@end
