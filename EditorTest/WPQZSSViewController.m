#import "WPQZSSViewController.h"
#import "WPQZSSPickerViewController.h"

@interface WPQZSSViewController ()

@end

@implementation WPQZSSViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"ZSSRichTextEditor";
    
    // Export HTML
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Export" style:UIBarButtonItemStylePlain target:self action:@selector(exportHTML)];
	
    // HTML Content to set in the editor
    NSString *html = @"<!-- This is an HTML comment -->"
    "<p>This is a test of the <strong>ZSSRichTextEditor</strong> by <a title=\"Zed Said\" href=\"http://www.zedsaid.com\">Zed Said Studio</a></p>";
    
    // Set the base URL if you would like to use relative links, such as to images.
    self.baseURL = [NSURL URLWithString:@"http://www.zedsaid.com"];
    
    // If you want to pretty print HTML within the source view.
    self.formatHTML = YES;
    
    // Set the toolbar item color
    //self.toolbarItemTintColor = [UIColor greenColor];
    
    // Set the toolbar selected color
    //self.toolbarItemSelectedTintColor = [UIColor brownColor];
    
    // Choose which toolbar items to show
    //self.enabledToolbarItems = ZSSRichTextEditorToolbarSuperscript | ZSSRichTextEditorToolbarUnderline | ZSSRichTextEditorToolbarH1 | ZSSRichTextEditorToolbarH3;
    
    // Set the HTML contents of the editor
    [self setHtml:html];
    
}

- (void)showInsertURLAlternatePicker {
    
    [self dismissAlertView];
    
    WPQZSSPickerViewController *picker = [[WPQZSSPickerViewController alloc] init];
    picker.demoView = self;
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:picker];
    nav.navigationBar.translucent = NO;
    [self presentViewController:nav animated:YES completion:nil];
    
}


- (void)showInsertImageAlternatePicker {
    
    [self dismissAlertView];
    
    WPQZSSPickerViewController *picker = [[WPQZSSPickerViewController alloc] init];
    picker.demoView = self;
    picker.isInsertImagePicker = YES;
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:picker];
    nav.navigationBar.translucent = NO;
    [self presentViewController:nav animated:YES completion:nil];
    
}


- (void)exportHTML {
    
    NSLog(@"%@", [self getHTML]);
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
