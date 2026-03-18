#print (150*0.12 ) #it will give what 12% of 150 is
#12 percent so it will be 12/100=0.12

print("Welcome to the Tip Calculator!")
bill = float(input("What was the total bill? $"))
tip = int(input("What percentage tip would you like to give? 10 12 15"))
people = int(input("How many people to split the bill? "))
bill_with_percentage = tip/100 * bill +bill # or bill*(1+tip/100)
#tip_as_percentage = tip/100
#total_tip_amount = bill * tip_as_percentage
#total_bill= bill+ total_tip_amount
bill_per_person =  bill_with_percentage/people
final_amount = round(bill_per_person,2)
print(f"Each person should pay ${final_amount}")
