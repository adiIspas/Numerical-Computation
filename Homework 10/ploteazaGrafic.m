function [] = ploteazaGrafic( functieSolutie, t, x, numeMetoda, tip )
%ploteazaGrafic 
    
    switch tip
        case 1
            figure;
                subplot(2,1,1) 
                    solutieNumerica = plot(t, x, 'r');       
                    set(solutieNumerica, 'linewidth', 3);  

                    hold on;
                        solutieFixa = plot(t, functieSolutie(t), 'b');
                        set(solutieFixa, 'linewidth', 1.5);
                    hold off;

                    title(['Metoda ' numeMetoda]);
                    legend('Solutie numerica', 'Solutie fixa');

                subplot(2,1,2) 
                    plot(t, abs(x - functieSolutie(t)), 'g');
                    title(['Eroare Metoda ' numeMetoda]);

            saveas(gcf,['grafic_' numeMetoda '.jpg'])
        case 2
            figure;
                solutie = functieSolutie(t);
                first = plot(t, abs(x(1,:) - solutie(1,:)), 'b');
                set(first, 'linewidth', 5);

                hold on;
                second = plot(t, abs(x(2,:) - solutie(2,:)), 'r');
                set(second, 'linewidth', 1.5);
                hold off;

                title(['Eroare Metoda ' numeMetoda]);
                
             saveas(gcf,['grafic_eroare_' numeMetoda '.jpg'])
    end
end

