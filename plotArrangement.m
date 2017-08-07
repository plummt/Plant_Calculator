function plotArrangement(fixtureCenters, fixtureLength,fixtureWidth, roomLength,roomWidth)
figure;
rectangle('Position',[0,0,roomWidth,roomLength]);
axis(gca,'equal');
hold on
for i = 1:size(fixtureCenters,1)
    plot(fixtureCenters(i,1),fixtureCenters(i,2),'*');
    rectangle('Position',[fixtureCenters(i,1)-(fixtureWidth/2),fixtureCenters(i,2)-(fixtureLength/2),fixtureWidth,fixtureLength])
end
hold off
end