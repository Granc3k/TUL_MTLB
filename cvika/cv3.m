% Martin Šimon, Vít Tlustý
function Y = VecBubbleSort(X)
pocetSloupcu = size(X,2);
pocetRa = size(X,1);
for i=1:pocetSloupcu
    for sloupec=1:(pocetSloupcu-1)
        for radek=1:pocetRa 
            if (X(radek,sloupec)~=X(radek,sloupec+1))
                if (X(radek,sloupec)<X(radek,sloupec+1))
                    temp = X(:,sloupec);
                    X(:,sloupec)=X(:,sloupec+1);
                    X(:,sloupec+1)=temp; 
                end
                break;
            end
        end
    end
end
Y=X;
end































end