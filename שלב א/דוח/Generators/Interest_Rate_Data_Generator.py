import pandas as pd
import random
from datetime import datetime, timedelta

# Function to generate random interest rate data
def generate_interest_rate_data(num_records):
    interest_rate_data = []
    for i in range(num_records):
        interest_rate_id = i
        benefits = random.choice(["None", "Long-Term Customer", "Soldier", "Student"])
        interest_type = random.choice(["Short-term", "Long-term"])
        prime = round(random.uniform(0, 10), 2)
        interest = round(random.uniform(0, 10), 2)
        interest_rate_data.append((str(interest_rate_id), benefits, interest_type, prime, interest))
    return interest_rate_data

# Example usage
num_interest_rate_records = 200  # Change to 200 for 200 rows

interest_rate_data = generate_interest_rate_data(num_interest_rate_records)

# Create a DataFrame from the generated data
columns = ['Interest_Rate_ID', 'Benefits', 'Type', 'Prime', 'Interest']
interest_rate_df = pd.DataFrame(interest_rate_data, columns=columns)

# Export DataFrame to Excel
excel_file_path = "interest_rates.xlsx"
interest_rate_df.to_excel(excel_file_path, index=False)

print(f"Interest rate data has been exported to {excel_file_path}")
