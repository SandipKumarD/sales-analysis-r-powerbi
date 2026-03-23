# Total Revenue:
Total.Revenue=sum(synthetic_beverage_sales_data$Total_Price)
Total.Revenue

# Total Orders Placed
Total.Orders=n_distinct(synthetic_beverage_sales_data$Order_ID)
Total.Orders


# Total Products:
Total.Products=n_distinct(synthetic_beverage_sales_data$Product)
Total.Products


# Total Customers:
Total.Customers=n_distinct(synthetic_beverage_sales_data$Customer_ID)
Total.Customers


# B2B & B2C Counts
summarise(group_by(synthetic_beverage_sales_data,Customer_Type),Customers=n_distinct(Customer_ID))

# Category wise consumption Counts
Consumption=summarise(group_by(synthetic_beverage_sales_data,Category),count=n())
Consumption

# Maximum consumption category
slice_max(Consumption,count,n=1)

# Minimum consumption category
slice_min(Consumption,count,n=1)


# Average Order Value (AOV)
AOV=Total.Revenue/ Total.Orders
AOV


# Total Quantity Sold
Total.Quantity= sum(synthetic_beverage_sales_data$Quantity)
Total.Quantity


# Revenue by Category
Category.Revenue=summarise(group_by(synthetic_beverage_sales_data,Category),Revenue.Earned=sum(Total_Price, na.rm = TRUE))
Category.Revenue



# Revenue by Region
Category.Region=summarise(group_by(synthetic_beverage_sales_data,Region),Revenue.Earned=sum(Total_Price, na.rm = TRUE))
Category.Region


# Quantity by Products
Product.Quantity = summarise(group_by(synthetic_beverage_sales_data,Product),Quantity.Sold=sum(Quantity,na.rm = TRUE))
Product.Quantity

# Top Product sold
Max1=slice_max(Product.Quantity,Quantity.Sold,n=1)
Max1

# Least Product sold
Min1=slice_min(Product.Quantity,Quantity.Sold,n=1)
Min1



