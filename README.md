# MATLAB

These are four MATLAB questions to practice on.

# Questions overview:

## Question 1)

	Define the functions x and y in terms of parameter a:
x(t)=√t sin(t)
y(t)=√t cos(t)

	Create a separate figure and in a 2x1 grid of subplots, plot the following curves: 

	y against x.
x against t and y against t


## Question 2)

Write a Matlab code that determines whether a company ABC has generated profit or loss percent based on the sales and expenses data from the year 2010 to 2019. The formula to calculate the profit/loss percent is:

Profit/loss (%) =100x(sales-expenses)/expenses

where positive percent means that there is a profit while negative percent indicates a loss and zero percent means no change.

The code should be organized as follows:

a)	Write a getData() function that asks the user to input the sales and the expenses data from the year 2010 to 2019 and returns it. (Do NOT use loops)								

b)	Write a CalculatePercent() function that accepts the sales and expenses data then returns a vector which holds the calculated percent for each respective year. (Do NOT use loops) 					

c)	Write a ProfitOrLoss() function that accepts the percent vector then returns an appropriate description string vector which shows whether there is a profit, a loss or no change in each year.  (Do NOT use loops)		(4 marks)

d)	Write a main script to do the following:			
•	Call getData() function to get the company’s sales and expenses data from the user.
•	Call calculatePercent()  to find the profit/loss percent values for each year. 
•	Call ProfitOrLoss()  to appropriate description for each percent value (i.e. profit, loss or no change) 
•	Display the company’s data (year, sales, expenses, percent, and description) in a tabular format.


## Question 3)

Write a Matlab script that prompts the user to enter a vector of integer numbers, then finds and displays numbers that appears twice in the vector. (Do not use loops)


## Question 4)
The following is an approximate conversion formula for converting Fahrenheit to Celsius:

Celsius≈(Fahrenheit-30)/2

Using this formula, and starting from a Fahrenheit temperature 0, using a Matlab loop determine when the approximate equivalence Celsius temperature differs from the exact equivalent value by more than four degrees. 
Note: the exact conversion formula: 

Celsius=(Fahrenheit-32)5/9
