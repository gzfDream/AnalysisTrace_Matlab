function [ sim ] = compareHist_plotfit(hista,histb)
%UNTITLED5 此处显示有关此函数的摘要
%   此处显示详细说明
% ft=fittype(['fourier','1']);
% opts = fitoptions(ft);
% num=[1:size(hista,2)];
% [fitresultA,gofA]=fit(num',hista',ft,opts);
% [fitresultB,gofB]=fit(num',histb',ft,opts);
% A=[fitresultA.a0,fitresultA.a1,fitresultA.b1,fitresultA.w];
% B=[fitresultB.a0,fitresultB.a1,fitresultB.b1,fitresultB.w];
% PA=fitresultA(num');
% PB=fitresultB(num');
A=polyfit([1:size(hista,2)],hista,2);
B=polyfit([1:size(histb,2)],histb,2);
sim = exp(-norm(A-B));
end

