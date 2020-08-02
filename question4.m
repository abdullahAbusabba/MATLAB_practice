format compact %Format Line Spacing in Output
%fprintf(formatSpec,A1,...,An) formats data and displays the results on the screen.
formatSpec= 'Fahrenheit=% 2.2f\n Approximate Celsius=% 2.2f\nExact Celsius=% 2.2f\nDifference=% 2.2f\n';   
Fahrenheit=-1;

while true
    Fahrenheit=Fahrenheit+1;%increment by 1 at each iteration
    approximateCelsius=(Fahrenheit-30)/2; % approximate formula conversion
    exactCelsius=(5/9)*(Fahrenheit-32); % exact formula conversion
    diff=exactCelsius-approximateCelsius;% difference
     if diff > 4
         %if condition is true print the results and exit while loop
         fprintf(formatSpec,Fahrenheit,approximateCelsius,exactCelsius,diff)
         break
         %end if statement
     end
     % end while loop   
end
%{
sample output:
Fahrenheit= 123.00
 Approximate Celsius= 46.50
Exact Celsius= 50.56
Difference= 4.06
%}