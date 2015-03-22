function new_filtered = amplifier(vid,ori)

% Amplify ratio configurable
% Bandpass location configurable

data = stack2yiq(vid,ori);

fl = 5/6;
fh = 1;

y_filtered = low_pass(data,fl,fh,vid,1);
i_filtered = low_pass(data,fl,fh,vid,2);
q_filtered = low_pass(data,fl,fh,vid,3);

y_filtered = y_filtered * 50;
i_filtered = i_filtered * 50;
q_filtered = q_filtered * 50000;

new_filtered(:,:,1,:) = y_filtered;
new_filtered(:,:,2,:) = i_filtered;
new_filtered(:,:,3,:) = q_filtered;


