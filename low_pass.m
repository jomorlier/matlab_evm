
function filtered = low_pass(data,fl,fh,vid,channel)

length = vid.NumberOfFrames;
samplingRate = vid.FrameRate;

r_test = data(:,:,channel,:);

r_fft = fft(r_test,[],4)/length;

Freq = 1:length;
Freq = (Freq-1)/length*samplingRate;
mask = Freq > fl & Freq < fh;

r_fft(:,:,:,~mask) = 0;


filtered = real(ifft(r_fft,[],4));


