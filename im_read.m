function stack = im_read(vid)

for i = 1 : vid.NumberOfFrames
    stack(:,:,:,i) = read(vid,i);
end

return 
    