%% Erwtima 4
function Erwtima4()
A = [
0 1 0 0 0 0 0 0 1 0 0 0 0 0 0
0 0 1 0 1 0 1 0 0 0 0 0 0 0 0
0 1 0 0 0 1 0 1 0 0 0 0 0 0 0
0 0 1 0 0 0 0 0 0 0 0 1 0 0 0
1 0 0 0 0 0 0 0 0 1 0 0 0 0 0
0 0 0 0 0 0 0 0 0 1 1 0 0 0 0
0 0 0 0 0 0 0 0 0 1 1 0 0 0 0
0 0 0 1 0 0 0 0 0 0 1 0 0 0 0
0 0 0 0 1 1 0 0 0 1 0 0 0 0 0
0 0 0 0 0 0 0 0 0 0 0 0 1 0 0
0 0 0 0 0 0 0 0 0 0 0 0 0 0 1
0 0 0 0 0 0 1 1 0 0 1 0 0 0 0
0 0 0 0 0 0 0 0 1 0 0 0 0 1 0
0 0 0 0 0 0 0 0 0 1 1 0 1 0 1
0 0 0 0 0 0 0 0 0 0 0 1 0 1 0];

s = size(A);
ni = A * (ones(s(2),1));

%Ypologizw ton G 
G = zeros (s(2));
q= 0.15;
for i=1:s(1)
    for j=1:s(2)
    G(i,j)=(q/s(1))+ (A(i,j)*(1-q))/ni(j);
    end
end

[l,v] = powerEigen(G);
%Afou ypologisame me thn methodo tis dinamis to idiodianisma kai thn
%idiotimh me sfalma ektou dekadikou
l = round(l);
if(l>1)
    fprintf("\n This array is not stohastic\n");
else
    fprintf("\n This array is stohastic\n");
end
% kanonikopoisa to dianisma diairontas to me thn norma 2 pou antistoixei
% sto metro toy
kn = norm(v);
p = v/kn;
disp(p);
fprintf("\n=====================\n");
disp(v);


%% Erwtima 3 - 4
fprintf("\n=======================new query===================\n")
A = [
0 1 0 0 0 0 0 0 1 0 0 0 0 0 1
0 0 1 0 1 0 1 0 0 0 0 0 0 0 0
0 1 0 0 0 1 0 1 0 0 0 0 0 0 0
0 0 1 0 0 0 0 0 0 0 0 1 0 0 0
1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 0 1 1 0 0 0 1
0 0 0 0 0 0 0 0 0 1 1 0 0 0 0
0 0 0 1 0 0 0 0 0 0 1 0 0 0 0
0 0 0 0 1 1 0 0 0 1 0 0 0 0 1
0 0 0 0 0 0 0 0 0 0 0 0 1 0 0
0 0 0 0 0 0 0 0 0 0 0 0 0 0 1
0 0 0 0 0 0 1 1 0 0 1 0 0 0 0
0 0 0 0 0 0 0 0 1 0 0 0 0 1 0
0 0 0 0 0 0 0 0 0 1 1 0 1 0 1
0 0 0 0 0 0 0 0 0 0 0 1 0 1 0];

s = size(A);
ni = A * (ones(s(2),1));
qi = [0.15,0.02,0.6];

%Ypologizw ton G 
for indi=1 :length(qi)
G = zeros (s(2));
q = qi(indi);
fprintf("\n This is q : %d",q);
for i=1:s(1)
    for j=1:s(2)
    G(i,j)=(q/s(1))+ (A(i,j)*(1-q))/ni(j);
    end
end

[l,v] = powerEigen(G);
%Afou ypologisame me thn methodo tis dinamis to idiodianisma kai thn
%idiotimh
l = round(l);
if(l>1)
    fprintf("\n This array is not stohastic\n");
else
    fprintf("\n This array is stohastic\n");
end
% kanonikopoisa to dianisma diairontas to me thn norma 2 pou antistoixei
% sto metro toy
kn = norm(v);
p = v/kn;
fprintf("\n===========P=========\n");
disp(p);
fprintf("\n---------------------\n");
fprintf("\n===========V=========\n");
disp(v);
end
%% Erwtima 6
fprintf("\n=======================new query===================\n")
A = [
0 1 0 0 0 0 0 0 1 0 0 0 0 0 0
0 0 1 0 1 0 1 0 0 0 0 0 0 0 0
0 1 0 0 0 1 0 1 0 0 0 0 0 0 0
0 0 1 0 0 0 0 0 0 0 0 1 0 0 0
1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 0 0 1 0 0 0 0
0 0 0 0 0 0 0 0 0 0 1 0 0 0 0
0 0 0 1 0 0 0 0 0 0 1 0 0 0 0
0 0 0 0 1 1 0 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 0 0 0 0 1 0 0
0 0 0 0 0 0 0 0 0 0 0 0 0 0 1
0 0 0 0 0 0 1 1 0 0 1 0 0 0 0
0 0 0 0 0 0 0 0 1 0 0 0 0 1 0
0 0 0 0 0 0 0 0 0 0 1 0 1 0 1
0 0 0 0 0 0 0 0 0 0 0 1 0 1 0];

s = size(A);
ni = A * (ones(s(2),1));

%Ypologizw ton G 
G = zeros (s(2));
q= 0.15;
for i=1:s(1)
    for j=1:s(2)
    G(i,j)=(q/s(1))+ (A(i,j)*(1-q))/ni(j);
    end
end

[l,v] = powerEigen(G);
%Afou ypologisame me thn methodo tis dinamis to idiodianisma kai thn
%idiotimh me sfalma ektou dekadikou
l = round(l);
if(l>1)
    fprintf("\n This array is not stohastic\n");
else
    fprintf("\n This array is stohastic\n");
end
% kanonikopoisa to dianisma diairontas to me thn norma 2 pou antistoixei
% sto metro toy
kn = norm(v);
p = v/kn;
disp(p);
fprintf("\n=====================\n");
disp(v);
end