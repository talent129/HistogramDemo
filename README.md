# HistogramDemo

# 柱状图

//绘制一个柱状图
//数据
NSArray *data = @[@180.8, @300, @125.2, @186.5, @125, @160, @216, @360];

NSArray *colorData = @[[UIColor redColor], [UIColor cyanColor], [UIColor yellowColor], [UIColor greenColor], [UIColor blueColor], [UIColor magentaColor], [UIColor purpleColor], [UIColor brownColor]];

//上下文
CGContextRef ref = UIGraphicsGetCurrentContext();

//计算每个柱子的x y w h
CGFloat w = rect.size.width / (data.count * 2 - 1);

for (int i = 0; i < data.count; i ++) {

//创建路径
CGFloat x = i * (w + w);
CGFloat h = rect.size.height * ([data[i] floatValue] / 500.0);
CGFloat y = rect.size.height - h;

UIBezierPath *path = [UIBezierPath bezierPathWithRect:CGRectMake(x, y, w, h)];

//添加到上下文中
CGContextAddPath(ref, path.CGPath);

//设置颜色
//        [[UIColor colorWithRed:arc4random_uniform(256)/255.0 green:arc4random_uniform(256)/255.0 blue:arc4random_uniform(256)/255.0 alpha:1] set];//随机色
//指定颜色
UIColor *color = (UIColor *)colorData[i];
[color set];

//渲染
CGContextDrawPath(ref, kCGPathFill);
}
