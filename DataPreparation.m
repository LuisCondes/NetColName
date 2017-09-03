function mat = DataPreparation()
    global heads;
    
    heads = {'Red','Orange','Brown','Yellow','Green','Blue','Purple','Pink','White','Grey','Black'};
    mat = ReadDataFile('Seaborn_RGB_11c.txt','\t');
    
end

function data = ReadDataFile(filepath,separator)
    file = tdfread(filepath,separator);
    
    clas = [file.Class];
    colv = [file.R,file.G,file.B];
    memb = [file.m_red,file.m_orange,file.m_brown,file.m_yellow,file.m_green,file.m_blue,file.m_purple,file.m_pink,file.m_white,file.m_grey,file.m_black]/10;
    
    data = {clas,colv,memb};
end

function mat = BalanceData(data)
    global heads;
    rows = size(data{1},1);
    mat = cell(11);
    ncol = zeros(11);
    for row = 1:rows
        coli = find(ismember(heads,strtrim(data{1}(row,:))));
        ncol(coli) = ncol(coli)+1;
        mat{coli}(ncol(coli),:) = [data{2}(row,:),data{3}(row,:)];
    end 
end