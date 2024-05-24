import random
from datetime import datetime, timedelta

def generate_interest_rate_data(num_records):
    interest_rate_data = """Interest_Rate_ID,Benefits,Type,Prime,Interest
"""
    for i in range(num_records):
        interest_rate_id = str(i+1)
        benefits = random.choice(["None", "Long-Term Customer", "Soldier", "Student"])
        interest_type = random.choice(["Short-term", "Long-term"])
        prime = str(round(random.uniform(0, 10), 2))
        interest = str(round(random.uniform(0, 10), 2))
        interest_rate_data+=interest_rate_id + "," + benefits + "," + interest_type + "," + prime + "," + interest + "\n"
    return interest_rate_data

num_interest_rate_records = 500

print(generate_interest_rate_data(num_interest_rate_records))
