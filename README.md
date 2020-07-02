# BeeHiveDemo
这是一个iOS组件化(BeeHive)方案的实践

### 结合BeeHive官方Demo 自己尝试的写了两个模块(这里是两个VC的通讯)

主要分为几个文件结构 : `ModuleHome`, `ModuleTest`, `Service`和`AppDelegate`
这里文章主要讲一下集成思路

1.`AppDelegate` 继承于 `BHAppDelegate` 使App的一些事件被接管
2. AppDelegate代码进行基础的配置工作
```
    [BHContext shareInstance].application = application;
    [BHContext shareInstance].launchOptions = launchOptions;
    [BHContext shareInstance].moduleConfigName = @"BeeHive.bundle/BeeHive";//可选，默认为BeeHive.bundle/BeeHive.plist
    [BHContext shareInstance].serviceConfigName = @"BeeHive.bundle/BHService";
    [BeeHive shareInstance].enableException = YES;
    [[BeeHive shareInstance] setContext:[BHContext shareInstance]];
    [[BHTimeProfiler sharedTimeProfiler] recordEventTime:@"BeeHive::super start launch"];
    [super application:application didFinishLaunchingWithOptions:launchOptions];
```
3. 创建Module文件, 和ServiceProtocol文件
4. 具体细节请查看Demo
