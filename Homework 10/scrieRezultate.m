function [] = scrieRezultate( t, x, numeMetoda )
%scrieRezultate
    
    fileID = fopen(['results_' numeMetoda '.txt'],'w');
    fprintf(fileID,'%s\n',['Metoda ' numeMetoda]);
    
    fprintf(fileID,'%s\n',['T: ']);
    fprintf(fileID,'%6.2f %12.8f\n',t);
    
    fprintf(fileID,'%s\n',['X: ']);
    fprintf(fileID,'%6.2f %12.8f\n',x);
    
    fclose(fileID);
end