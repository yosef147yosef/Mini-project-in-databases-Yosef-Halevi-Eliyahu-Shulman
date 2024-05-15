import csv
import random
import string

class Worker:
    def __init__(self, name, id):
        self.name = name
        self.id = id

def generate_random_worker():
    # Generate a random name
    name = ''.join(random.choices(string.ascii_uppercase + string.ascii_lowercase, k=8))

    # Generate a random ID (integer or string)
    id = random.choice([str(random.randint(1000, 9999)), ''.join(random.choices(string.ascii_uppercase + string.digits, k=4))])

    return Worker(name, id)

def write_to_csv(workers):
    with open("worker.csv", 'w', newline='') as csvfile:
        writer = csv.writer(csvfile)
        # Write headers
        writer.writerow(['ID', 'NAME'])

        # Write worker data
        for worker in workers:
            writer.writerow([worker.id, worker.name])

def main():
    # Generate 200 random workers
    workers = [generate_random_worker() for _ in range(200)]

    # Write workers to CSV file
    write_to_csv(workers)

if __name__ == "__main__":
    main()
