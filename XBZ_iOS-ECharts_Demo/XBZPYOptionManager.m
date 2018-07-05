//
//  BCPYOptionManager.m
//  BuildCloud
//
//  Created by BigKing on 2018/7/2.
//  Copyright © 2018年 bottle. All rights reserved.
//

#import "XBZPYOptionManager.h"


@implementation XBZPYOptionManager

+ (PYOption *)configOptionWithStack:(NSArray *)stacks {
    return [PYOption initPYOptionWithBlock:^(PYOption *option) {
        option.legendEqual([PYLegend initPYLegendWithBlock:^(PYLegend *legend) {
            legend.show = YES;
        }])
        .gridEqual([PYGrid initPYGridWithBlock:^(PYGrid *grid) {
            grid.xEqual(@80).x2Equal(@12);
            grid.yEqual(@30).y2Equal(@30);
            grid.borderWidth = @0;
        }])
        .tooltipEqual([PYTooltip initPYTooltipWithBlock:^(PYTooltip *tooltip) {
            tooltip.triggerEqual(PYTooltipTriggerAxis)
            .axisPointerEqual([PYAxisPointer initPYAxisPointerWithBlock:^(PYAxisPointer *axisPoint) {
                axisPoint.typeEqual(PYAxisPointerTypeNone);
            }]);
        }])
        .addXAxis([PYAxis initPYAxisWithBlock:^(PYAxis *axis) {
            axis.typeEqual(PYAxisTypeCategory);
            axis.splitLine.show = NO;
            axis.axisTick = [[PYAxisTick alloc] init];
            axis.axisTick.show = NO;
            axis.axisLine = [PYAxisLine initPYAxisLineWithBlock:^(PYAxisLine *axisLine) {
                axisLine.lineStyle.color = @"#989898";
                
            }];
            axis.splitLineEqual([PYAxisSplitLine initPYAxisSplitLineWithBlock:^(PYAxisSplitLine *axisSplitLine) {
                axisSplitLine.showEqual(NO);
            }]);
            
        }])
        .addYAxis([PYAxis initPYAxisWithBlock:^(PYAxis *axis) {
            axis.typeEqual(PYAxisTypeValue);
            axis.splitLine.show = NO;
            axis.axisTick = [[PYAxisTick alloc] init];
            axis.axisTick.show = YES;
            
            axis.axisLine = [PYAxisLine initPYAxisLineWithBlock:^(PYAxisLine *axisLine) {
                axisLine.lineStyle.color = @"#989898";
            }];
        }]);
        
        if (stacks) {
            for (int i = 0; i < stacks.count; i++) {
                option.addSeries([PYCartesianSeries initPYCartesianSeriesWithBlock:^(PYCartesianSeries *series) {
                    series.stackEqual(stacks[i]).typeEqual(PYSeriesTypeBar)
                    .itemStyleEqual([PYItemStyle initPYItemStyleWithBlock:^(PYItemStyle *itemStyle) {
                        itemStyle.normalEqual([PYItemStyleProp initPYItemStylePropWithBlock:^(PYItemStyleProp *normal) {
                            normal.labelEqual([PYLabel initPYLabelWithBlock:^(PYLabel *label) {
                                label.showEqual(YES).positionEqual(PYPositionTop);
                                label.textStyleEqual([PYTextStyle initPYTextStyleWithBlock:^(PYTextStyle *textStyle) {
                                    textStyle.color = @"#000000";
                                }]);
                            }]);
                        }]);
                    }]);
                }]);
            }
        }
    }];
}

@end
