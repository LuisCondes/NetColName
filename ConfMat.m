function [rn cmat result] = ConfMat()
    data = load('labdata');
    data = data.mat;

    bak = data{11};
    data{11} = data{9};
    data{9} = bak;

    cmat = zeros(11,11);
    scmat = zeros(11);

    for i = 1:11
       col = squeeze(data{i}(:,1:3));
       scmat(i) = size(col,1);
       clas = transpose(NeuralNetworkLAB(transpose(col)));
       for j = 1:size(col,1)
           [~,o] = max(clas(j,:));
           cmat(i,o) = cmat(i,o) + 1;
       end
    end

    result = zeros(11,2);

    for i = 1:11
        result(i,1) = cmat(i,i) * 100 / scmat(i);
    end

    result(:,2) = 100 - result(:,1);

    rn = sum(result) / 11;
end
