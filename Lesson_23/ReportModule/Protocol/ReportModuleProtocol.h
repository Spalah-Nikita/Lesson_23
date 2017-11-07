//
//  ReportModuleProtocol.h
//  Lesson_23
//
//  Created by Nikita Vintonovich on 10/31/17.
//  Copyright © 2017 Vint-Rock. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ReportModelInput <NSObject>

- (NSInteger)reportsCount;
- (id)reportAtIndex:(NSInteger)index;

- (void)createNewTestReport;
- (void)needToReloadData;

@end

@protocol ReportModelOutut <NSObject>

- (void)dataDidReload;

@end

@protocol ReportViewInput <NSObject>

- (void)addReportButtonWasTapped;

@end

@protocol ReportViewOutput <NSObject>

@end
