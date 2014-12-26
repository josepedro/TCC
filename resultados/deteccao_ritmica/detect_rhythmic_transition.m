
function y = detect_rhythmic_transition(file_path)
  file = open(file_path);
  seg = [0:(length(file.data(:,1))-1)]/file.fs;
  figure;plot(seg, file.data(:,1));
  signal = downsample(abs(file.data(:,1)),10);
  h = fir1(900, [0.00001/file.fs] * 2, 'low') ;
  y = conv(h, signal);
  max_value = max(y);
  signal_filtered = zeros(1,length(y));
  for iterator = 1:length(y)
    if(y(iterator) >= max_value/30)
      signal_filtered(iterator) = y(iterator);
    end
  end

  figure;plot(y);

  figure;plot(signal_filtered);
  length(y)/file.fs

  r = decrease_resolution(signal_filtered, file.fs, 100);
  length(r)/10
  length(findpeaks(r))
  findpeaks(r)
  figure; plot(r)
