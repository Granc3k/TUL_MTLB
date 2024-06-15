function cipher = cipher_task(text, key)
    % cipher = cipher_task(text, key)
    % text - libovolne dlouhy retezec (pole char)
    % key - libovolny retezec (pole char) kratsi/stejne dlouhy jako text: length(text)>=length(key) 
    % cipher - vystupni retezec - sifra - radkovy vektor
    %Šimon,Tlustý
    keyNums=double(key);
    keySorted=zeros(1, length(key));
    [c cisla]=sort(keyNums);
    [tem,keySorted]=sort(cisla);
    
    %for 1
    text=append(text,repmat(' ',1,(length(key)-mod(length(text),length(key)))));
    
    %for 2
    M=reshape(text,[length(key),length(text)/length(key)])';
    
    %for 3
    c1=char(M(:,cisla)');
    
    %vypis
    cipher=num2cell(c1,2)';
    cipher=strjoin(cipher,'');

end
