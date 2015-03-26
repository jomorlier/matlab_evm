function new_img = gauss_mat(img)

myfilter = fspecial('gaussian',[3 3], 0.5);

new_img = img;

for i = 1:1:5
    new_img = imfilter(new_img,myfilter,'replicate');
    new_img = imresize(new_img,0.5);
end

return 

