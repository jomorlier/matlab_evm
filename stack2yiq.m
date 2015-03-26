function fourth_reduce = stack2yiq(vid,ori)

load('ori_data');
size(ori)
    
for i = 1 : 1 : vid.NumberOfFrames
    ntsc_stack(:,:,:,i) = rgb2ntsc(ori(:,:,:,i));
end

for i = 1 : 1 : vid.NumberOfFrames
    first_reduce(:,:,:,i) = impyramid(ntsc_stack(:,:,:,i),'reduce');
    second_reduce(:,:,:,i) = impyramid(first_reduce(:,:,:,i),'reduce');
    third_reduce(:,:,:,i) = impyramid(second_reduce(:,:,:,i),'reduce');
    fourth_reduce(:,:,:,i) = impyramid(third_reduce(:,:,:,i),'reduce');
end


    

return 

    