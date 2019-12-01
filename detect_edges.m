function edge = detect_edges(img)
    edge = zeros(size(img, 2))
    edge1 =zeros(size(img,1))
    edge2 = zeros(size(img,1)) % we set the values of the matrices to zero
    b = size(img,2)
    for i= 1:b-1  % we do the loop until b-1 in order to keep the output image inside the borders of the input image
        for j =1:b
            edge1(i,j) =abs(img(i,j)-img(i+1,j));
       end 
    end
    for i = 1:b
        for j= 1:b-1 % we do the loop till b-1 for the same reason
            edge2(i,j) = abs(img(i,j)-img(i,j+1));
        end
    end
    for i = 1:b
        for j = 1:b
            edge(i,j) = (edge2(i,j)+edge1(i,j))/2; % we do the avarage
        end
    end
end