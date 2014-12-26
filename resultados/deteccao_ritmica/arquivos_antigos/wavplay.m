function wavplay(varargin)
%WAVPLAY Play sound using Windows audio output device.
%   WAVPLAY will be removed in a future release.  Use AUDIOPLAYER instead.
%
%   WAVPLAY(Y,FS) sends the signal in vector Y with sample frequency
%   of FS Hertz to the Windows WAVE audio device.  Standard audio
%   rates are 8000, 11025, 22050, and 44100 Hz.
%   WAVPLAY(Y) automatically sets the sample rate to 11025 Hz.
%   For stereo playback, Y SSSSSshould be an N-by-2 matrix.
%
%   WAVPLAY(...,'async') begins sound playback and returns
%   immediately from the function call (i.e., a nonblocking call).
%   WAVPLAY(...,'sync') does not return from the function call
%   until the sound has finished playing (i.e., a blocking call).
%   This is the default playback mode.
%
%   Y must contain audio samples stored in double, int16, or uint8
%   matrices.  Double precision data samples must be in the range
%   -1.0 <= y <= 1.0; values outside that range are clipped.
%
%   Supported data types for Y and the corresponding number of bits
%   per sample used during playback in each format are as follows:
%      Data Type   bits/sample
%       'double'      16
%       'single'      16
%       'int16'       16
%       'uint8'        8
%
%   This function is only for use with 32-bit Windows machines.
%
%   See also SOUND, SOUNDSC, AUDIOPLAYER.

%   Author: D. Orofino
%   Copyright 1984-2011 The MathWorks, Inc.
%   $Revision: 1.1.6.10 $  $Date: 2011/12/22 18:27:06 $

% if ~ispc
%    error(message('MATLAB:audiovideo:wavplay:invalidPlatform'));
% end

warning(message('MATLAB:audiovideo:wavplay:functionToBeRemoved'));

error(nargchk(1,3,nargin));
if ischar(varargin{end}),
   s=varargin{end};
   varargin(end)=[];
else
   if nargin>2,
      error(message('MATLAB:audiovideo:wavplay:invalidInputs'));
   end
   s='sync';
end
if length(varargin)<2,
   fs=11025;
else
   fs=varargin{2};
end
y = varargin{1};

% Make sure that there's one column per channel:
if ndims(y)>2, error(message('MATLAB:audiovideo:wavplay:invalidInputType')); end

sync_opt = strmatch(s,{'sync','async'});
if isempty(sync_opt),
   error(message('MATLAB:audiovideo:wavplay:unrecognizedOption', s));
end

if sync_opt==2,
   % asynchronous playback
   % signals must be COLS for playsndb
   % accepts doubles only
   
   % Transpose - input to playsnd must be a column or multiple columns
   if size(y,1)==1, y = y.'; end
   
   switch class(y)
   case 'double'
      y = max(-1,min(1,y));   % Clip y to [-1,+1]
      bits = 16;
   case 'single'
      y = max(-1,min(1,y));   % Clip y to [-1,+1]
      y = double(y);          % convert to doubles
      bits = 16;
   case 'int16'
      y = double(y)./32768;      % convert to doubles
      bits = 16;
   case 'uint8'
      y = (double(y)-128)./128;  % convert to doubles
      bits = 8;
   otherwise,
      error(message('MATLAB:audiovideo:wavplay:invalidDataType'));
   end
   
   % Invoke the MATLAB sound command:
   playsnd(y,fs,bits);
   
else
   % synchronous playback
   % signals must be ROWS for playsndb
   % accepts doubles, int16, and uint8 directly
   playsndb(y',fs);
end

% [EOF] wavplay.m
