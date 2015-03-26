function test_stack = stack2yiq(vid,stack)

for i = 1 : 1: vid.NumberOfFrames
%     test_stack(:,:,:,i) = gauss(rgb2ntsc(stack(:,:,:,i)));
    test_stack(:,:,:,i) = impyramid(rgb2ntsc(stack(:,:,:,i)),'reduce');
end

return 

    