%%读取一个txt文本
%%计算每个点的由其轨迹点集的协方差矩阵
    s=[];
    all_s=[];%trajectory of sampling points
    all_tra=[];% trace of sampling points
    test = test5;
    num_frame = size(test,2)/3;
    for j=1:size(test,1)
        for i=1:num_frame
            s(i,:) = [test(j,(i-1)*3+1) test(j,(i-1)*3+2) test(j,(i-1)*3+3)];
        end
        all_s{j,1}=s;
        all_tra(j,1)=trace(cov(s));
    end
    tra5 = all_tra;
    save test5 tra5;
