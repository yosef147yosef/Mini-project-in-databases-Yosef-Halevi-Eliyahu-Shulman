import csv

def read_keys_from_csv(filename):
    with open(filename, newline='') as csvfile:
        reader = csv.reader(csvfile)
        next(reader)  # Skip headers
        keys = [row[0] for row in reader]
    return keys

def generate_keys_csv(entity1_filename, entity2_filename, relation_filename):
    # Read keys from CSV files
    keys1 = read_keys_from_csv(entity1_filename)
    keys2 = read_keys_from_csv(entity2_filename)

    # Write keys to CSV file for relationship
    with open(relation_filename, 'w', newline='') as csvfile:
        writer = csv.writer(csvfile)
        # Write headers
        writer.writerow([f'{entity1_filename[:-4]}_ID', f'{entity2_filename[:-4]}_ID'])
        # Write keys
        for key1 in keys1:
            for key2 in keys2:
                writer.writerow([key1, key2])

# Generate keys CSV file for "Worker to Bank" relationship
generate_keys_csv("worker.csv", "bank.csv", "worker_to_bank.csv")
