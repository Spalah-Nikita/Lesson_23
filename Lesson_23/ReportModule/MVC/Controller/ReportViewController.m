//
//  ReportViewController.m
//  Lesson_23
//
//  Created by Nikita Vintonovich on 10/31/17.
//  Copyright © 2017 Vint-Rock. All rights reserved.
//

#import "ReportViewController.h"
#import "ReportModel.h"
#import "ReportView.h"
#import "ReportModuleProtocol.h"
#import "Report+CoreDataProperties.h"

@interface ReportViewController () <ReportModelOutut, ReportViewInput, UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) ReportModel *model;
@property (nonatomic, weak) IBOutlet ReportView *contentView;

@end

@implementation ReportViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setup];
}

#pragma mark - Lazy Init

- (ReportModel*)model
{
    if (!_model)
    {
        _model = [ReportModel new];
    }
    return _model;
}

#pragma mark - Private Methods

- (void)setup
{
    self.model.modelOutput = self;
    self.contentView.userInterfaceInput = self;
    self.contentView.tableView.allowsMultipleSelectionDuringEditing = NO;
    [self.model needToReloadData];
}

#pragma mark - TableView DataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.model reportsCount];
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    Report *report = [self.model reportAtIndex:indexPath.row];
    cell.textLabel.text = report.name;
    
    return cell;
}

#pragma mark - Report View Input Protocol

- (void)addReportButtonWasTapped
{
    [self.model createNewTestReport];
}

#pragma mark - Report Model Output Protocol

- (void)dataDidReload
{
    [self.contentView.tableView reloadData];
}

@end
