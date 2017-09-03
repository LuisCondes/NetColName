function Main()
    clear

	global heads
	global colors
	
	heads = {'red','orange','brown','yellow','green','blue','purple','pink','white','grey','black'};
    colors = [[255,0,0];[255,128,0];[128,64,0];[255,255,0];[0,255,0];[0,0,255];[128,0,128];[255,128,128];[0,0,0];[128,128,128];[255,255,255]];
    
    fmem = tdfread('MembershipValues_sRGB.txt','\t');

    col = [fmem.R,fmem.G,fmem.B];
    mem = [fmem.m_red,fmem.m_orange,fmem.m_brown,fmem.m_yellow,fmem.m_green,fmem.m_blue,fmem.m_purple,fmem.m_pink,fmem.m_black,fmem.m_grey,fmem.m_white]/10;
    
    %find_classification_rate(col,mem);
    perform_image_test(col,mem,'images/ColorTest.png');
end

function find_classification_rate(col,mem)
	global heads
	
    % Generating ground truth
    for row = 1:size(mem,1)
        [e,i] = max(mem(row,:));
        memb(row,i) = 1;
        smemb(row) = heads(i);
    end

    % Generating classification
    for row = 1:size(col,1)
        [e,i] = max(transpose(PercentColorNameNNrgb(transpose(col(row,:)))));
        class(row) = heads(i);
    end

    % Extracting results
    right = [];
    wrong = [];
    for row = 1:size(smemb,2)
       if strcmp(smemb(row),class(row))
            right = [right,[row,class(row)]];
       else
            wrong = [wrong,[row,class(row),smemb(row)]];
       end
    end
    
    (numel(right) / 2) / numel(smemb)
end

function perform_image_test(col,mem,path)
	global colors
	
    im = ;
	
	% Execution will fail here if picture is grayscale!
    result = uint8(zeros(size(im,1),size(im,2),size(im,3)));
    
    for i = 1:size(im,1)
        for j = 1:size(im,2)
            [e,k] = max(transpose(auto_nn(double(squeeze(im(i,j,:))))));
            result(i,j,:) = uint8(colors(k,:));
        end
    end
    
	imwrite(result,[path,'_result.png'])
    imshow(result);
end