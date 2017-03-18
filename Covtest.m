clear
clc
%file=dir('D:\data\17_3_13\DoR-exp\mouse\t3\txt\*.txt');
file=dir('D:\c++\MyProjectAboutNudge\AnalysisTrace\AnalysisTrace\*.txt');
fileindex=[];
for n=1:length(file)
    %temp{n}=dlmread(['D:\data\17_3_13\DoR-exp\mouse\t3\txt\',file(n).name],' ',0,0);
    %temp{n}=dlmread(['D:\c++\MyProjectAboutNudge\AnalysisTrace\AnalysisTrace\',file(n).name],' ',0,0);
    temp{n}=dlmread(['D:\c++\MyProjectAboutNudge\AnalysisTrace\AnalysisTrace\',file(n).name]);
    filename=file(n).name;
    fileindex =[fileindex str2num(filename(5:size(filename,2)-4))];
end
[B,index]=sort(fileindex,2,'ascend');
temp=temp(index);
for k=1:length(temp)
    s=[];
    all_s=[]; % trajectory of sampling points
    all_tra=[]; % trace of sampling points
    test = temp{k};
    num_frame = size(test,2)/3;
    for j=1:size(test,1)
        for i=1:num_frame
            s(i,:) = [test(j,(i-1)*3+1) test(j,(i-1)*3+2) test(j,(i-1)*3+3)];
        end
        all_s{j,1}=s;
        all_tra(j,1)=trace(cov(s));
    end
    AllTra{1,k}= all_tra;
    eval(['tra',num2str(k),'=','all_tra']);
    %save eval(['tra',num2str(n)]);
end