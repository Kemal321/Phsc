b ; % Number of bike in Boston at the beginning
c ; % Number of bike in Cambridge   at the beginning
b_new = b - 0.05*b + 0.03*c;
c_new = c + 0.05*b - 0.03*c;
b = b_new;
c = c_new;
b
c
% Tam yapmadık çünkü for loop hatırlamadık yada hatıladık ama yapmadık
% garip durum ama ilk adımı doğru attık sonuç olarak.
