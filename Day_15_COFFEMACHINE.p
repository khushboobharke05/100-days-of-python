MENU = {
    "espresso": {
        "ingredients": {
            "water": 50,
            "coffee": 18,
        },
        "cost": 1.5,
    },
    "latte": {
        "ingredients": {
            "water": 200,
            "milk": 150,
            "coffee": 24,
        },
        "cost": 2.5,
    },
    "cappuccino": {
        "ingredients": {
            "water": 250,
            "milk": 100,
            "coffee": 24,
        },
        "cost": 3.0,
    }
}

resources = {
    "water": 300,
    "milk": 200,
    "coffee": 100,
    "money" : 0
}

is_on = True
while is_on:
    order = input("What would you like? (espresso, latte, cappuccino) : \n")
    if order == "off":
        is_on = False
    elif order == "report":
        print(f"Water: {resources['water']}ml")
        print(f"Milk: {resources['milk']}ml")
        print(f"Coffee: {resources['coffee']}g")
        print(f"Money: ${resources['money']}")
    elif order in MENU:
        enough_resources = True
        for item in MENU[order]["ingredients"]:
            if resources[item] < MENU[order]["ingredients"][item]:
                print(f"Sorry there is not enough {item}.")
                enough_resources = False
        if enough_resources:
            print("Please insert coins.")

            quarters = int(input("how many quarters?:")) * 0.25
            dimes = int(input("how many dimes?:")) * 0.1
            nickles = int(input(" how many nickles?:")) * 0.05
            pennies = int(input("how many pennies?: ")) * 0.01

            total = quarters + dimes + nickles + pennies
            cost = MENU[order]["cost"]

            if total < cost :
                print("Sorry that's not enough money. Money refunded.")
            else:
                if total >cost:
                    change = round(total - cost, 2)
                    print(f"Here is ${change} in change.")

                for item in MENU[order]["ingredients"]:
                    resources[item] -= MENU[order]["ingredients"][item]

                resources["money"] += cost

                print(f"Here is your {order}. Enjoy!")
    else:
        print("Invalid choice. Please try again.")














