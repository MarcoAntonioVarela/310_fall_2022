# %%
#Housing Data Analysis by Marco Varela
import altair as alt
import pandas as pd
url = ("https://raw.githubusercontent.com/rashida048/Datasets/master/home_data.csv")
housing_data = pd.read_csv(url)




# %%
print("Showing all the data")
print(housing_data)



# %%
print("I will reset our dataset indexes")
housing_data = housing_data.reset_index()
print(housing_data)



# %%
print('What is the cheapest house?')
cheapest_house = housing_data[housing_data['price']==housing_data['price'].min()]
print(cheapest_house) 



print('What is the most expensive house?')
most_expensive_house = housing_data[housing_data['price']==housing_data['price'].max()]
print(most_expensive_house)



# %%
print("What is the average house price?")
average_house_price = housing_data["price"].mean()
print(average_house_price)



# %%
print("What is the biggest house? (square feet)
biggest_house = housing_data["sqft_living"].max()
print(biggest_house)




# %%
print("What is the smallest size? (square feet)
smallest_house = housing_data["sqft_living"].min()
print(smallest_house)



# %%
print("What is the average house size? (square feet)
average_house_size = housing_data["sqft_living"].mean()
print(average_house_price)



# %%
print('What is the correlation between the house size and the price?')
chart = (alt.Chart(housing_data)
  .encode(
    x ='sqft_lot',
    y='price',
    color = 'floors')
  .mark_circle()
)
chart.save("Charts/size_prices.png")



# %%
print("How many houses have 1 floor?")
number_of_houses = '21613'
has_1_floor = housing_data[housing_data["floors"] == 1].count()
print(f'From {number_of_houses}, there are {has_1_floor} houses with 1 floor')



# %%
print("How many houses have 2 floors?")
number_of_houses = '21613'
has_1_floor = housing_data[housing_data["floors"] == 2].count()
print(f'From {number_of_houses}, there are {has_1_floor} houses with 2 floors')



# %%
print("How many houses have 3 floors?")
number_of_houses = '21613'
has_1_floor = housing_data[housing_data["floors"] == 3].count()
print(f'From {number_of_houses}, there are {has_1_floor} houses with 3 floors')


# %%
print('Are 2-floor and 3-floor houses more expensive than 1-floor houses?')
chart = (alt.Chart(housing_data)
  .encode(
    x ='floors',
    y='price',
    color = 'condition')
  .mark_circle()
)
chart.save("Charts/floors_prices.png")



# %%
print("What is the most predominant housing condition?")
chart = (alt.Chart(housing_data)
  .encode(
    x ='condition',
    y = 'index')
  .mark_square()
)
chart.save("Charts/housing_condition.png")
