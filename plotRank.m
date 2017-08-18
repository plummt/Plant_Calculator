function plotRank(num,numMax,numMin,varargin)
rankPlot =figure('units','inches');
rankAxes = axes(rankPlot);
set(rankPlot,'Renderer','painters');
barh(rankAxes,numMax, 'w')
hold on
barh(rankAxes,num, 'k')
hold off
set(rankAxes,'XLim',[numMin numMax])
set(rankAxes,'YTickLabel',' ','YTick',0);
xticks([numMin ,((numMax - numMin)*.25)+numMin,((numMax - numMin)*.5)+numMin,...
    ((numMax - numMin)*.75)+numMin,numMax]);
if numMax<10
    set(rankAxes,'XTickLabel',numberFormatter([numMin ,((numMax - numMin)*.25)+numMin,((numMax - numMin)*.5)+numMin,...
        ((numMax - numMin)*.75)+numMin,numMax],'#.#'));
else
    set(rankAxes,'XTickLabel',numberFormatter([numMin ,((numMax - numMin)*.25)+numMin,((numMax - numMin)*.5)+numMin,...
        ((numMax - numMin)*.75)+numMin,numMax],'#'));
end
if num>((numMax - numMin)*.75)+numMin
    text(num,1,sprintf('%0.1f ',num),'Color','w', 'HorizontalAlignment','Right','FontSize',6);
else
    text(num,1,sprintf(' %0.1f',num),'FontSize',6);
end
if numel(varargin) == 1
    pos = get(rankPlot,'InnerPosition');
    set(rankPlot,'InnerPosition',[pos(1),pos(2),3.5, .4]);
    set(gca,'units', 'normalized','outerPosition',[0 0 1 1],'fontsize',6)
    set(rankPlot,'Renderer','painters');
    set(rankPlot,'Resize','off');
    saveas(rankPlot,varargin{1});
    RemoveWhiteSpace([], 'file',varargin{1});
    close(rankPlot)
else
    title('Ranking');
end
end