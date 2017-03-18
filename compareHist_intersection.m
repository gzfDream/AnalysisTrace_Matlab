function [ sim ] = compareHist_intersection(hista,histb)
%UNTITLED2 此处显示有关此函数的摘要
%   此处显示详细说明
sim=0;
for i=1:size(hista,2)
    sim=sim+min(hista(i),histb(i));
end

end

