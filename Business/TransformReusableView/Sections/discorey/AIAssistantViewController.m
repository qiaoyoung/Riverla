//
//  AIAssistantViewController.m
//  Riverla
//
//  Created by mac on 2025/6/19.
//  Copyright © 2025 Riverla. All rights reserved.
//

#import "AIAssistantViewController.h"
#import <Foundation/Foundation.h>

// AI助手人设和配置
#define AI_API_KEY @"3e5287278f76406f86f244f441254475.GfEcGy3eRA62vhCv"
#define AI_API_URL @"https://open.bigmodel.cn/api/paas/v4/chat/completions"

@interface AIMessage : NSObject
@property (nonatomic, strong) NSString *role;
@property (nonatomic, strong) NSString *content;
@property (nonatomic, strong) NSDate *timestamp;
@property (nonatomic, assign) BOOL isFromUser;
@end

@implementation AIMessage
@end

@interface AIAssistantViewController () <UITableViewDataSource, UITableViewDelegate, UITextFieldDelegate>

@property (nonatomic, strong) UITableView *chatTableView;
@property (nonatomic, strong) UIView *inputContainerView;
@property (nonatomic, strong) UITextField *messageTextField;
@property (nonatomic, strong) UIButton *sendButton;
@property (nonatomic, strong) NSMutableArray<AIMessage *> *messages;
@property (nonatomic, strong) UIActivityIndicatorView *loadingIndicator;
@property (nonatomic, strong) AIMessage *typingMessage;
@property (nonatomic, strong) UIView *contentView;

@end

@implementation AIAssistantViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupUI];
    [self setupMessages];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    // 隐藏系统导航栏 - 与探索页面一致
    self.navigationController.navigationBarHidden = YES;
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    // 恢复导航栏
    self.navigationController.navigationBarHidden = NO;
}

- (void)setupUI {
    self.view.backgroundColor = [UIColor whiteColor];
    
    // 创建背景图片 - 与探索页面完全一致
    UIImageView *bg = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 375)];
    // 使用与探索页面相同的背景图片
    bg.image = [UIImage imageNamed:@"chat_top_bg"];
    [self.view addSubview:bg];
    
    // 创建自定义导航栏 - 与探索页面完全一致
    UIView *topView = [[UIView alloc] initWithFrame:CGRectMake(0, [UIDevice clear], [[UIScreen mainScreen] bounds].size.width, 44)];
    [self.view addSubview:topView];
    
    // 返回按钮
    UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    backBtn.frame = CGRectMake(15, 6, 32, 32);
    [backBtn addTarget:self action:@selector(backButtonTapped) forControlEvents:UIControlEventTouchUpInside];
    
    // 设置返回图标
    if (@available(iOS 13.0, *)) {
        UIImage *backImage = [UIImage systemImageNamed:@"chevron.left"];
        UIImageSymbolConfiguration *config = [UIImageSymbolConfiguration configurationWithPointSize:18 weight:UIImageSymbolWeightBold];
        backImage = [backImage imageWithConfiguration:config];
        [backBtn setImage:backImage forState:UIControlStateNormal];
    } else {
        [backBtn setTitle:@"‹" forState:UIControlStateNormal];
        backBtn.titleLabel.font = [UIFont boldSystemFontOfSize:24];
    }
    backBtn.tintColor = [UIColor whiteColor];
    [backBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [topView addSubview:backBtn];
    
    // 标题 - 与探索页面样式一致
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(60, 0, [[UIScreen mainScreen] bounds].size.width - 120, 44)];
    titleLabel.textColor = [UIColor whiteColor];
    titleLabel.font = [UIFont boldSystemFontOfSize:18];
    titleLabel.text = @"AI Beauty Assistant";
    titleLabel.textAlignment = NSTextAlignmentCenter;
    [topView addSubview:titleLabel];
    
    // 创建内容区域 - 与探索页面完全一致
    UIView *contentView = [[UIView alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice clear])+10, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice clear]))];
    contentView.backgroundColor = [UIColor whiteColor];
    contentView.layer.cornerRadius = 34;
    [self.view addSubview:contentView];
    
    // 创建聊天列表
    self.chatTableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
    self.chatTableView.dataSource = self;
    self.chatTableView.delegate = self;
    self.chatTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.chatTableView.backgroundColor = [UIColor clearColor];
    self.chatTableView.showsVerticalScrollIndicator = NO;
    self.chatTableView.contentInset = UIEdgeInsetsMake(20, 0, 20, 0);
    [contentView addSubview:self.chatTableView];
    
    // 创建输入容器
    self.inputContainerView = [[UIView alloc] init];
    self.inputContainerView.backgroundColor = [UIColor whiteColor];
    self.inputContainerView.layer.shadowColor = [UIColor blackColor].CGColor;
    self.inputContainerView.layer.shadowOffset = CGSizeMake(0, -2);
    self.inputContainerView.layer.shadowOpacity = 0.1;
    self.inputContainerView.layer.shadowRadius = 8;
    // 确保阴影显示
    self.inputContainerView.layer.masksToBounds = NO;
    [self.view addSubview:self.inputContainerView];
    
    // 创建输入框
    self.messageTextField = [[UITextField alloc] init];
    self.messageTextField.placeholder = @"Ask me about beauty tips...";
    self.messageTextField.backgroundColor = [UIColor colorWithRed:0.96 green:0.96 blue:0.98 alpha:1.0];
    self.messageTextField.layer.cornerRadius = 20;
    self.messageTextField.layer.borderWidth = 1;
    self.messageTextField.layer.borderColor = [UIColor colorWithRed:0.9 green:0.9 blue:0.92 alpha:1.0].CGColor;
    self.messageTextField.font = [UIFont systemFontOfSize:16];
    self.messageTextField.delegate = self;
    
    // 设置输入框内边距
    UIView *leftPaddingView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 15, 40)];
    self.messageTextField.leftView = leftPaddingView;
    self.messageTextField.leftViewMode = UITextFieldViewModeAlways;
    
    [self.inputContainerView addSubview:self.messageTextField];
    
    // 创建发送按钮
    self.sendButton = [UIButton buttonWithType:UIButtonTypeSystem];
    [self.sendButton setTitle:@"Send" forState:UIControlStateNormal];
    [self.sendButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    self.sendButton.titleLabel.font = [UIFont boldSystemFontOfSize:16];
    
    // 使用固定背景色替代渐变
    self.sendButton.backgroundColor = [UIColor colorWithRed:0.3 green:0.6 blue:1.0 alpha:1.0];
    
    self.sendButton.layer.cornerRadius = 20;
    self.sendButton.layer.shadowColor = [UIColor colorWithRed:0.3 green:0.6 blue:1.0 alpha:0.5].CGColor;
    self.sendButton.layer.shadowOffset = CGSizeMake(0, 4);
    self.sendButton.layer.shadowOpacity = 0.3;
    self.sendButton.layer.shadowRadius = 8;
    
    [self.sendButton addTarget:self action:@selector(sendButtonTapped) forControlEvents:UIControlEventTouchUpInside];
    [self.inputContainerView addSubview:self.sendButton];
    
    // 创建加载指示器
    self.loadingIndicator = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleMedium];
    self.loadingIndicator.hidesWhenStopped = YES;
    [contentView addSubview:self.loadingIndicator];
    
    // 保存contentView引用
    self.contentView = contentView;
    
    [self setupConstraints];
}

- (void)setupConstraints {
    self.chatTableView.translatesAutoresizingMaskIntoConstraints = NO;
    self.inputContainerView.translatesAutoresizingMaskIntoConstraints = NO;
    self.messageTextField.translatesAutoresizingMaskIntoConstraints = NO;
    self.sendButton.translatesAutoresizingMaskIntoConstraints = NO;
    self.loadingIndicator.translatesAutoresizingMaskIntoConstraints = NO;
    
    [NSLayoutConstraint activateConstraints:@[
        // 聊天列表约束 - 在contentView内布局
        [self.chatTableView.topAnchor constraintEqualToAnchor:self.contentView.topAnchor constant:15],
        [self.chatTableView.leadingAnchor constraintEqualToAnchor:self.contentView.leadingAnchor constant:15],
        [self.chatTableView.trailingAnchor constraintEqualToAnchor:self.contentView.trailingAnchor constant:-15],
        [self.chatTableView.bottomAnchor constraintEqualToAnchor:self.inputContainerView.topAnchor],
        
        // 输入容器约束 - 不使用安全区域，贴着屏幕底部
        [self.inputContainerView.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor],
        [self.inputContainerView.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor],
        [self.inputContainerView.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor],
        [self.inputContainerView.heightAnchor constraintEqualToConstant:80],
        
        // 输入框约束
        [self.messageTextField.leadingAnchor constraintEqualToAnchor:self.inputContainerView.leadingAnchor constant:20],
        [self.messageTextField.trailingAnchor constraintEqualToAnchor:self.sendButton.leadingAnchor constant:-15],
        [self.messageTextField.centerYAnchor constraintEqualToAnchor:self.inputContainerView.centerYAnchor],
        [self.messageTextField.heightAnchor constraintEqualToConstant:44],
        
        // 发送按钮约束
        [self.sendButton.trailingAnchor constraintEqualToAnchor:self.inputContainerView.trailingAnchor constant:-20],
        [self.sendButton.centerYAnchor constraintEqualToAnchor:self.inputContainerView.centerYAnchor],
        [self.sendButton.widthAnchor constraintEqualToConstant:70],
        [self.sendButton.heightAnchor constraintEqualToConstant:44],
        
        // 加载指示器约束
        [self.loadingIndicator.centerXAnchor constraintEqualToAnchor:self.contentView.centerXAnchor],
        [self.loadingIndicator.centerYAnchor constraintEqualToAnchor:self.contentView.centerYAnchor]
    ]];
}

- (void)setupMessages {
    self.messages = [NSMutableArray array];
    
    // 添加欢迎消息
    AIMessage *welcomeMessage = [[AIMessage alloc] init];
    welcomeMessage.role = @"assistant";
    welcomeMessage.content = @"Hello! I'm your AI beauty assistant for Riverla! 🌟\n\nI can help you with:\n• Beauty enhancement tips\n• Photo composition advice\n• Lighting techniques\n• Makeup suggestions\n• Skincare guidance\n• Photo editing tips\n\nWhat would you like to know about beauty enhancement?";
    welcomeMessage.timestamp = [NSDate date];
    welcomeMessage.isFromUser = NO;
    
    [self.messages addObject:welcomeMessage];
}

#pragma mark - Actions

- (void)backButtonTapped {
    // 恢复导航栏
    self.navigationController.navigationBarHidden = NO;
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)sendButtonTapped {
    NSString *messageText = [self.messageTextField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    if (messageText.length == 0) {
        return;
    }
    
    // 添加用户消息
    AIMessage *userMessage = [[AIMessage alloc] init];
    userMessage.role = @"user";
    userMessage.content = messageText;
    userMessage.timestamp = [NSDate date];
    userMessage.isFromUser = YES;
    
    [self.messages addObject:userMessage];
    
    // 清空输入框
    self.messageTextField.text = @"";
    
    // 刷新表格
    [self.chatTableView reloadData];
    [self scrollToBottom];
    
    // 发送到AI
    [self sendMessageToAI:messageText];
}

- (void)sendMessageToAI:(NSString *)message {
    [self.loadingIndicator startAnimating];
    self.sendButton.enabled = NO;
    
    // 添加"AI正在输入"提示
    [self showTypingIndicator];
    
    // 构建请求数据
    NSMutableArray *messagesArray = [NSMutableArray array];
    
    // 添加系统提示词
    [messagesArray addObject:@{
        @"role": @"system",
        @"content": @"You are a professional AI beauty assistant for the Riverla app, an AI-powered beauty enhancement and social platform. You specialize in:\n\n1. AI Beauty Enhancement: Advising on optimal beauty filter parameters, face shape analysis, and natural-looking enhancement techniques\n2. Photo Composition: Professional photography tips, angles, poses, and framing for portraits\n3. Lighting Techniques: Indoor/outdoor lighting setups, natural light optimization, and shadow management\n4. Makeup & Skincare: Application techniques, product recommendations, and skin analysis\n5. Technical Guidance: Camera settings, editing workflows, and beauty app features\n\nAlways respond in English with specific, actionable advice. Be encouraging and professional. Focus on helping users achieve natural, beautiful results while building their confidence. Provide step-by-step instructions when appropriate."
    }];
    
    // 添加历史消息（最近10条）
    NSInteger startIndex = MAX(0, (NSInteger)self.messages.count - 10);
    for (NSInteger i = startIndex; i < self.messages.count; i++) {
        AIMessage *msg = self.messages[i];
        [messagesArray addObject:@{
            @"role": msg.role,
            @"content": msg.content
        }];
    }
    
    NSDictionary *requestBody = @{
        @"model": @"glm-4-flash",
        @"messages": messagesArray,
        @"temperature": @0.7,
        @"max_tokens": @1000
    };
    
    NSError *error;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:requestBody options:0 error:&error];
    
    if (error) {
        [self handleAIError:@"Failed to create request"];
        return;
    }
    
    // 创建请求
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:AI_API_URL]];
    request.HTTPMethod = @"POST";
    [request setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request setValue:[NSString stringWithFormat:@"Bearer %@", AI_API_KEY] forHTTPHeaderField:@"Authorization"];
    request.HTTPBody = jsonData;
    
    // 发送请求
    NSURLSessionDataTask *task = [[NSURLSession sharedSession] dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        dispatch_async(dispatch_get_main_queue(), ^{
            [self.loadingIndicator stopAnimating];
            self.sendButton.enabled = YES;
            [self hideTypingIndicator];
            
            if (error) {
                [self handleAIError:error.localizedDescription];
                return;
            }
            
            NSHTTPURLResponse *httpResponse = (NSHTTPURLResponse *)response;
            if (httpResponse.statusCode != 200) {
                [self handleAIError:[NSString stringWithFormat:@"HTTP Error: %ld", (long)httpResponse.statusCode]];
                return;
            }
            
            NSError *jsonError;
            NSDictionary *responseDict = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonError];
            
            if (jsonError) {
                [self handleAIError:@"Failed to parse response"];
                return;
            }
            
            // 解析AI回复
            NSArray *choices = responseDict[@"choices"];
            if (choices.count > 0) {
                NSDictionary *choice = choices[0];
                NSDictionary *message = choice[@"message"];
                NSString *content = message[@"content"];
                
                if (content) {
                    [self addAIResponse:content];
                } else {
                    [self handleAIError:@"No content in response"];
                }
            } else {
                [self handleAIError:@"No choices in response"];
            }
        });
    }];
    
    [task resume];
}

- (void)addAIResponse:(NSString *)response {
    AIMessage *aiMessage = [[AIMessage alloc] init];
    aiMessage.role = @"assistant";
    aiMessage.content = response;
    aiMessage.timestamp = [NSDate date];
    aiMessage.isFromUser = NO;
    
    [self.messages addObject:aiMessage];
    [self.chatTableView reloadData];
    [self scrollToBottom];
}

- (void)handleAIError:(NSString *)errorMessage {
    [self hideTypingIndicator];
    
    AIMessage *errorMsg = [[AIMessage alloc] init];
    errorMsg.role = @"assistant";
    errorMsg.content = [NSString stringWithFormat:@"Sorry, I encountered an error: %@. Please try again.", errorMessage];
    errorMsg.timestamp = [NSDate date];
    errorMsg.isFromUser = NO;
    
    [self.messages addObject:errorMsg];
    [self.chatTableView reloadData];
    [self scrollToBottom];
}

- (void)scrollToBottom {
    if (self.messages.count > 0) {
        NSIndexPath *indexPath = [NSIndexPath indexPathForRow:self.messages.count - 1 inSection:0];
        [self.chatTableView scrollToRowAtIndexPath:indexPath atScrollPosition:UITableViewScrollPositionBottom animated:YES];
    }
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.messages.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier = @"ChatCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    
    // 清除之前的子视图和图层
    for (UIView *subview in cell.contentView.subviews) {
        [subview removeFromSuperview];
    }
    // 清除可能存在的渐变图层
    for (CALayer *layer in [cell.contentView.layer.sublayers copy]) {
        if ([layer isKindOfClass:[CAGradientLayer class]]) {
            [layer removeFromSuperlayer];
        }
    }
    
    AIMessage *message = self.messages[indexPath.row];
    
    // 创建消息气泡
    UIView *bubbleView = [[UIView alloc] init];
    bubbleView.layer.cornerRadius = 18;
    
    UILabel *messageLabel = [[UILabel alloc] init];
    messageLabel.text = message.content;
    messageLabel.numberOfLines = 0;
    messageLabel.font = [UIFont systemFontOfSize:16];
    messageLabel.lineBreakMode = NSLineBreakByWordWrapping;
    
    // 检查是否是打字指示器
    BOOL isTyping = [message.content isEqualToString:@"AI is typing..."];
    
    if (message.isFromUser) {
        // 用户消息 - 右侧渐变蓝色气泡
        messageLabel.textColor = [UIColor whiteColor];
        
        // 使用固定背景色替代渐变层，避免frame问题
        bubbleView.backgroundColor = [UIColor colorWithRed:0.3 green:0.6 blue:1.0 alpha:1.0];
        
        // 添加阴影
        bubbleView.layer.shadowColor = [UIColor colorWithRed:0.3 green:0.6 blue:1.0 alpha:0.3].CGColor;
        bubbleView.layer.shadowOffset = CGSizeMake(0, 2);
        bubbleView.layer.shadowOpacity = 0.5;
        bubbleView.layer.shadowRadius = 4;
        
        [cell.contentView addSubview:bubbleView];
        [bubbleView addSubview:messageLabel];
        
        bubbleView.translatesAutoresizingMaskIntoConstraints = NO;
        messageLabel.translatesAutoresizingMaskIntoConstraints = NO;
        
        [NSLayoutConstraint activateConstraints:@[
            [bubbleView.trailingAnchor constraintEqualToAnchor:cell.contentView.trailingAnchor constant:-20],
            [bubbleView.topAnchor constraintEqualToAnchor:cell.contentView.topAnchor constant:8],
            [bubbleView.bottomAnchor constraintEqualToAnchor:cell.contentView.bottomAnchor constant:-8],
            [bubbleView.widthAnchor constraintLessThanOrEqualToConstant:280],
            [bubbleView.leadingAnchor constraintGreaterThanOrEqualToAnchor:cell.contentView.leadingAnchor constant:80],
            
            [messageLabel.leadingAnchor constraintEqualToAnchor:bubbleView.leadingAnchor constant:16],
            [messageLabel.trailingAnchor constraintEqualToAnchor:bubbleView.trailingAnchor constant:-16],
            [messageLabel.topAnchor constraintEqualToAnchor:bubbleView.topAnchor constant:12],
            [messageLabel.bottomAnchor constraintEqualToAnchor:bubbleView.bottomAnchor constant:-12]
        ]];
        
    } else {
        // AI消息 - 左侧白色气泡带边框
        bubbleView.backgroundColor = [UIColor whiteColor];
        bubbleView.layer.borderWidth = 1;
        bubbleView.layer.borderColor = [UIColor colorWithRed:0.9 green:0.9 blue:0.92 alpha:1.0].CGColor;
        messageLabel.textColor = [UIColor colorWithRed:0.2 green:0.2 blue:0.2 alpha:1.0];
        
        // 如果是打字指示器，添加特殊样式
        if (isTyping) {
            messageLabel.textColor = [UIColor colorWithRed:0.6 green:0.6 blue:0.6 alpha:1.0];
            messageLabel.font = [UIFont italicSystemFontOfSize:15];
        }
        
        // 创建机器人头像 - 独立于气泡外部
        UIView *avatarView = [[UIView alloc] init];
        avatarView.backgroundColor = [UIColor colorWithRed:0.4 green:0.6 blue:1.0 alpha:1.0];
        avatarView.layer.cornerRadius = 18; // 36x36的圆形头像
        avatarView.layer.shadowColor = [UIColor blackColor].CGColor;
        avatarView.layer.shadowOffset = CGSizeMake(0, 2);
        avatarView.layer.shadowOpacity = 0.2;
        avatarView.layer.shadowRadius = 4;
        
        UILabel *aiIcon = [[UILabel alloc] init];
        aiIcon.text = @"🤖";
        aiIcon.font = [UIFont systemFontOfSize:20];
        aiIcon.textAlignment = NSTextAlignmentCenter;
        
        [avatarView addSubview:aiIcon];
        
        // 添加轻微阴影
        bubbleView.layer.shadowColor = [UIColor blackColor].CGColor;
        bubbleView.layer.shadowOffset = CGSizeMake(0, 1);
        bubbleView.layer.shadowOpacity = 0.1;
        bubbleView.layer.shadowRadius = 3;
        
        [cell.contentView addSubview:avatarView];
        [cell.contentView addSubview:bubbleView];
        [bubbleView addSubview:messageLabel];
        
        avatarView.translatesAutoresizingMaskIntoConstraints = NO;
        bubbleView.translatesAutoresizingMaskIntoConstraints = NO;
        aiIcon.translatesAutoresizingMaskIntoConstraints = NO;
        messageLabel.translatesAutoresizingMaskIntoConstraints = NO;
        
        [NSLayoutConstraint activateConstraints:@[
            // 头像约束
            [avatarView.leadingAnchor constraintEqualToAnchor:cell.contentView.leadingAnchor constant:15],
            [avatarView.topAnchor constraintEqualToAnchor:cell.contentView.topAnchor constant:8],
            [avatarView.widthAnchor constraintEqualToConstant:36],
            [avatarView.heightAnchor constraintEqualToConstant:36],
            
            // 头像内图标约束
            [aiIcon.centerXAnchor constraintEqualToAnchor:avatarView.centerXAnchor],
            [aiIcon.centerYAnchor constraintEqualToAnchor:avatarView.centerYAnchor],
            
            // 气泡约束 - 位于头像右侧
            [bubbleView.leadingAnchor constraintEqualToAnchor:avatarView.trailingAnchor constant:10],
            [bubbleView.topAnchor constraintEqualToAnchor:cell.contentView.topAnchor constant:8],
            [bubbleView.bottomAnchor constraintEqualToAnchor:cell.contentView.bottomAnchor constant:-8],
            [bubbleView.widthAnchor constraintLessThanOrEqualToConstant:250],
            [bubbleView.trailingAnchor constraintLessThanOrEqualToAnchor:cell.contentView.trailingAnchor constant:-20],
            
            // 消息文本约束
            [messageLabel.leadingAnchor constraintEqualToAnchor:bubbleView.leadingAnchor constant:16],
            [messageLabel.trailingAnchor constraintEqualToAnchor:bubbleView.trailingAnchor constant:-16],
            [messageLabel.topAnchor constraintEqualToAnchor:bubbleView.topAnchor constant:12],
            [messageLabel.bottomAnchor constraintEqualToAnchor:bubbleView.bottomAnchor constant:-12]
        ]];
    }
    
    return cell;
}

#pragma mark - UITableViewDelegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return UITableViewAutomaticDimension;
}

- (CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 80;
}

#pragma mark - UITextFieldDelegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [self sendButtonTapped];
    return YES;
}

- (void)showTypingIndicator {
    if (self.typingMessage) return;
    
    self.typingMessage = [[AIMessage alloc] init];
    self.typingMessage.role = @"assistant";
    self.typingMessage.content = @"AI is typing...";
    self.typingMessage.timestamp = [NSDate date];
    self.typingMessage.isFromUser = NO;
    
    [self.messages addObject:self.typingMessage];
    [self.chatTableView reloadData];
    [self scrollToBottom];
}

- (void)hideTypingIndicator {
    if (!self.typingMessage) return;
    
    [self.messages removeObject:self.typingMessage];
    self.typingMessage = nil;
    [self.chatTableView reloadData];
}

@end 
