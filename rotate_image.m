function rot = rotate_image(img, theta)
    rot = zeros(size(img)); % we set the values inside the matrix to zero
    n = size(img);
    for i = 1:n(1)
        for j =1:n(2)
            mire = [cos(theta), sin(theta);-sin(theta), cos(theta)];
            rots = (inv(mire))*([i;j]-[n(1)/2;n(2)/2])+[n(1)/2;n(2)/2];
            y = int8(rots(1)); % y will be the first index of the output matrix
            x = int8(rots(2)); % x will be the second index of the output matrix
            if x>=1&&y>=1x<=n(1)&&y<=n(2) % we do an if statement to make sure that the output matrix
                rot(j,i) = img(x,y);
            end
        end
    end
end

