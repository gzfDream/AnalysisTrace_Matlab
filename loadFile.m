file=dir('C:\Users\25596\Desktop\code\txt3\*.txt');
for n=1:length(file)
    temp=dlmread(['C:\Users\25596\Desktop\code\txt3\',file(n).name],' ',0,0);
    eval([file(n).name(1:end-4),'=temp;'])
end