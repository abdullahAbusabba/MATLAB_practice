function question2
%calling all functions and setting years from 2010 thru 2019    
    years=2010:2019;
    [sales,expenses]=getData();
    vector_percent=calculatePercent(sales , expenses);
    description=ProfitOrLoss(vector_percent);
    T=table(years',sales',expenses',vector_percent',description');
    T.Properties.VariableNames=["year","sales","expense","percent %","decsription"];
    disp(T)  
end
function [sales , expenses] = getData()
% this function does not accept any argument but returns two vectors 
% it prompt the user for sales and expenses data as vectors    
    sales=input( 'Enter the sales data from the year 2010 to 2019 between a []:');
    expenses=input( 'Enter the expenses data from the year 2010 to 2019 between a []:'); 
end
function [vector_percent] = calculatePercent(sales , expenses)
    % this function accept two arguments (sales,expenses) and the percent
    vector_percent=(100*minus(sales,expenses))./expenses;
end
function description = ProfitOrLoss(vector_percent)
        % this function accept one arguments (vector_percent)
        % it returns the equivalent string representation either loss, profit or no change 
    description=cell(size(vector_percent));
    description(vector_percent>0)={'profit'};
    description(vector_percent==0)={'no change'};
    description(vector_percent<0)={'loss'};
end

%{
sample input:

>> question2
Enter the sales data from the year 2010 to 2019 between a []:
[200 250 120 230 450 340 500 100 90 80]
Enter the expenses data from the year 2010 to 2019 between a []:
[200 200 300 250 90 340 1000 100 20 120]
    year    sales    expense    percent %     decsription 
    ____    _____    _______    _________    _____________

    2010     200       200             0     {'no change'}
    2011     250       200            25     {'profit'   }
    2012     120       300           -60     {'loss'     }
    2013     230       250            -8     {'loss'     }
    2014     450        90           400     {'profit'   }
    2015     340       340             0     {'no change'}
    2016     500      1000           -50     {'loss'     }
    2017     100       100             0     {'no change'}
    2018      90        20           350     {'profit'   }
    2019      80       120       -33.333     {'loss'     }

    %}