//
//  ViewController.m
//  ArabicGrammar
//
//  Created by Sow Moussa on 2017/07/29.
//  Copyright © 2017 Sow Moussa. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDataSource, UITableViewDelegate>{
    NSMutableArray *mLessonArray;
    
}

@property (weak, nonatomic) IBOutlet UITableView *mainTableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self createArabicGrammarLessons];
    self.title = @"Contents";
}

- (void) createArabicGrammarLessons {
    mLessonArray = [NSMutableArray arrayWithArray:@[@"Harf Jarr", @"Harf Nasb", @"Adverbs of place", @"Adverbs of time", @"Numbers", @"Ordinals"]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableView DataSource Methods
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return mLessonArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString* cellIdentifier = @"cell";
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    //cell.imageView.image = [UIImage imageNamed:@"imagename"];
    cell.textLabel.text = mLessonArray[indexPath.row];
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%d", (int)indexPath.row + 1];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return cell;
}

@end
