 %vid = VideoReader('face.mp4');

 %ori = im_read(vid);
%load ori_data.mat

new_filtered = amplifier(vid,[]);




for i = 1 : vid.NumberOfFrames
    filtered = imresize(new_filtered(:,:,:,i),[vid.Height,vid.Width]);
    pic_test = rgb2ntsc(ori(:,:,:,i)) + filtered;
    frame = ntsc2rgb(pic_test);
%     frame(frame>1) = 1;
%     frame(frame<0) = 0;
    imshow(frame);
    pause;

end

    