V=-0.7:0.1:0.7;
V=V';
Is=5*10^-6;
Vz=-50;
l=length(V);
for i=1:l
    if V(i,1)>Vz
        I(i,1)=Is*(exp(V(i,1)/(0.02527*2))-1);
        if I(i,1)>1
            I(i,1)=1;
        end
    else
        I(i,1)=-Inf;
    end
end
