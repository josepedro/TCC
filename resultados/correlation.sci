function [c]=coeffcorr(X,Y)
	// first check consistency of data, return NAN in case of problem
	 [lX,cX]=size(X);
	 if (lX == 1)
	 X=X';
	 sX=cX;
	 elseif (cX==1)
	 sX=lX;
	 else
	 c=%nan;
	 return
	 end
	 [lY,cY]=size(Y);
	 if (lY == 1)
	 Y=Y';
	 sY=cY;
	 elseif (cY==1)
	 sY=lY;
	 else
	 c=%nan;
	 return;
	 end
	 if (sX ~= sY)
	 c=%nan;
	 return;
	 end
	 // here begins the actual computation
	 X=X-mean(X);
	 Y=Y-mean(Y);
	 c=X'*Y;
	 if (c==0)
	 return;
	 else
	 c=c/(norm(X)*norm(Y));
	 end
 endfunction
