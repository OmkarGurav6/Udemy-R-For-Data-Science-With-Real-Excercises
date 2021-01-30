#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution

profit <- revenue - expenses
profit

tax <- round(0.3*profit,2)
tax


profit_after_tax <- profit - tax
profit_after_tax

profit_margin <- round(profit_after_tax/revenue,2)*100
profit_margin

mean_profit <- mean(profit_after_tax)
mean_profit  

good_months <- profit_after_tax > mean_profit  
good_months

bad_months <- !good_months
bad_months

best_month <- profit_after_tax ==  max(profit_after_tax)
best_month

worst_month <- profit_after_tax == min(profit_after_tax)
worst_month


r <- round(revenue/1000,0)
r

e <- round(expenses/1000)
e

p <- round(profit/1000)
p

pat <- round(profit_after_tax/1000)
pat

r
e
p
pat
profit_margin
good_months
bad_months
best_month
worst_month

