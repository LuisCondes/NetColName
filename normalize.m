clear;
a = zeros(2,11);
vec = zeros(1,3);

for r = 0:255
   for g = 0:255
      for b = 0:255
        col = [r g b];
        lab = NeuralNetworkSRGB(col);
        for i = 1:11
           if lab(i) > a(1,i)
              a(1,i) = lab(i); 
           end
           if lab(i) < a(2,i)
              a(2,i) = lab(i); 
           end
        end
      end
   end
   clc;
   per = 255 - r
   a
   pause(0.005)
end