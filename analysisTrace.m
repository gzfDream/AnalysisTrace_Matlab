%%display trace of sampling points

Covtest
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
numbin =20;
normalHist=[];
maxHist = [];
for i=1:size(AllTra,2)
    %[histFreqi,histXouti] = hist(AllTra{i},numbin);
    normalHist = [normalHist max(AllTra{i})];
end
normalHist = max(normalHist);
x_scale=[0+normalHist/numbin:normalHist/numbin:normalHist];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
for i=1:size(AllTra,2)
    [histFreq{1,i},histXout{1,i}] = hist(AllTra{i},x_scale);
    maxHist = [maxHist max(histFreq{1,i}./sum(histFreq{1,i}))];
    normalHistFre{1,i}=histFreq{1,i}./sum(histFreq{1,i});
end
maxHist=max(maxHist);
m=6;%size(AllTra,2)/3;
for j=0:size(AllTra,2)-1
    if mod(j,6)==0
        figure
    end
subplot(m,3,mod(j,6)*3+1)
plot(AllTra{j+1},'r')
subplot(m,3,mod(j,6)*3+2)
hist(AllTra{j+1},x_scale)
%[histFreq0,histXout0] = hist(tra0,[0:normalHist/numbin:normalHist]);
subplot(m,3,mod(j,6)*3+3)
bar(x_scale,histFreq{1,j+1}./sum(histFreq{1,j+1}))
axis([0 normalHist 0 maxHist]);    
hold on
plot(x_scale, normalHistFre{j+1},'r.-')
end


similar=[];
for i=1:size(normalHistFre,2)
    for j=1:size(normalHistFre,2)
        similar(i,j) = exp(-sum(abs(normalHistFre{i}-normalHistFre{j})));
        %similar(i,j) = compareHist_intersection(normal{i},normal{j});
    end
end