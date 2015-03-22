vid = VideoReader('face.mp4');

ori = im_read(vid);
new_filtered = amplifier(vid,ori);

vidOut = VideoWriter('tk');
vidOut.FrameRate = vid.FrameRate;
open(vidOut)


for i = 1 : vid.NumberOfFrames
    filtered = imresize(new_filtered(:,:,:,i),[vid.Height,vid.Width]);
    pic_test = rgb2ntsc(ori(:,:,:,i)) + filtered;
    frame = ntsc2rgb(pic_test);
    frame(frame>1) = 1;
    frame(frame<0) = 0;
    writeVideo(vidOut,im2uint8(frame));

end
close(vidOut);

    