file=dir('C:\Users\25596\Desktop\code\txt\txt\*.txt');
f_length = length(file);
normalHist1 = 0;
minHist1 = 1;
for n=1:f_length
    m_max=max(eval(['tra',num2str(n)]));
    if normalHist1 < m_max
        normalHist1 = m_max;
    end
    
    m_min = min(eval(['tra',num2str(n)]));
    if minHist1 > m_min
        minHist1 = m_min;
    end
end

normalbin = (normalHist-minHist)/(numbin-1);

for i = 1:f_length
    [histFreq,histXout] = hist(eval(['tra',num2str(i)]),[minHist1:normalbin:normalHist1]);
    temp1 = eval(['m_histFreq',num2str(i),'=','histFreq']);
    temp2 = eval(['m_histXout',num2str(i),'=','histXout']);
    eval(['m_normalFreq',num2str(i),'=','histXout']);
    m_normalFreq1=histFreq1./sum(histFreq1);
end

for
    
end

