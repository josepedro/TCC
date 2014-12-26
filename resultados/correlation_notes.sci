function [c, max_frequency]=coeffcorr_notes(X,Y)
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
   correlation_vector = X.*Y;

   //apply threshold
   correlation_vector(790:length(correlation_vector)) = 0;
   for iterator = 1:789
    if (correlation_vector(iterator) < (max(correlation_vector))/20)
      correlation_vector(iterator) = 0;
    end
   end
   //get the first element not igual a 0
   for iterator = 1:789
    if (correlation_vector(iterator) ~= 0)
      //find the frequency
      max_frequency = find(correlation_vector == correlation_vector(iterator));
      break;
    end
   end

   c=sum(correlation_vector);
   //disp(c)
   if (c==0)
    return;
   else
    c=c/(norm(X)*norm(Y));
   end

 endfunction
