//
//  SubPageTVC.m
//  YXTPageViewDemo
//
//  Created by Hanton on 6/18/15.
//  Copyright (c) 2015 YXT. All rights reserved.
//

#import "SubPageTVC.h"
#import "SubPageCell.h"

static NSString* const SubPageCellIdentifier = @"SubPageCell";

@interface SubPageTVC ()

@end

@implementation SubPageTVC

- (void)viewDidLoad {
  [super viewDidLoad];
  
  [self.tableView registerNib:[UINib nibWithNibName:NSStringFromClass([SubPageCell class]) bundle:nil] forCellReuseIdentifier:SubPageCellIdentifier];
  
  self.tableView.delegate = self;
  self.tableView.dataSource = self;
  self.tableView.showsVerticalScrollIndicator = NO;
  self.tableView.backgroundColor = [UIColor colorWithRed:213.0/255.0 green:197.0/255.0 blue:174.0/255.0 alpha:1.0];
  self.tableView.separatorStyle = UITableViewCellSeparatorStyleSingleLineEtched;
  
  self.clearsSelectionOnViewWillAppear = YES;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
  return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
  return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:SubPageCellIdentifier forIndexPath:indexPath];
  
  // Configure the cell...
  
  return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
  return 150.0;
}

@end
