function [ sim ] = compareHist_intersection(hista,histb)
%UNTITLED2 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
sim=0;
for i=1:size(hista,2)
    sim=sim+min(hista(i),histb(i));
end

end

